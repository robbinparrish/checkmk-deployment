## Backup and Restore.
https://docs.checkmk.com/latest/en/omd_basics.html#omd_backup_restore

### Backup Checkmk instance.

#### Triggering Backup.
Run following command to trigger the backup.
This will create a `.tar.gz` file containing all data and configurations.
```bash
docker-compose exec -it checkmk omd backup cmk /omd/backups/checkmk-$(date "+%d%m%Y%H%M%S").tar.gz
```

#### Triggering Restore.
Followings conditions must be met for restore.
- A working Checkmk instance.

#### Restore.
- Stop the Checkmk service.
```bash
docker-compose exec -it checkmk omd stop
```

- Copy the backup file for restore.
```
Copy checkmk-TIMESTAMP.tar.gz file to ./checkmk-data/backups directory.
```

- Restore the checkmk backup.
```bash
docker-compose exec -it checkmk omd restore --reuse --kill /omd/backups/checkmk-TIMESTAMP.tar.gz
```

### Stop all the container.
```
docker-compose down
```

### Starting the container.
```
docker-compose up -d
```

### Checking the container logs.
```
docker-compose logs -f
```

#### Once Backup is restored login to the Checkmk instance and verify that all configurations and data are restored.

[Automatic Backup Setup](./automatic-backup/README.md)
