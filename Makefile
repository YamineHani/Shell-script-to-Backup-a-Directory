backup_dir=backup
source_dir=source
sec=10
max_backups=5

.PHONY: backup

backup:
	mkdir -p $(backup_dir)
	./backupd.sh $(source_dir) $(backup_dir) $(sec) $(max_backups)