#!/bin/bash

backup_dir=$2
source_dir=$1
sec=$3
max_backups=$4

while :
do

ls -lR $source_dir > directory-info.new

diff directory-info.new directory-info.last
if [ $? -eq 0 ]; then
echo "no change"
else 
echo "changed"
current_time=$(date +'%Y%m%d-%H%M%S')
mkdir $backup_dir/$current_time
cp -r $source_dir $backup_dir/$current_time

num_backups=$(ls -d $backup_dir/*/ | wc -l)
if (( $num_backups > $max_backups )); then
dir_remove=`ls $backup_dir | sort | head -1`
rm -r $backup_dir/$dir_remove
fi

fi

cat directory-info.new > directory-info.last

sleep $sec
done
