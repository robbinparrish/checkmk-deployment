# Perform an automatic backup of Checkmk Deployment.

## Copy backup script.
```bash
cp -a checkmk-deployment-backup.sh /usr/bin/
chmod +x /usr/bin/checkmk-deployment-backup.sh
```

## Update the configuration path in the backup script.
Update following in `/usr/bin/checkmk-deployment-backup.sh`
```
CHECKMK_DEPLOYMENT_DIR="${HOME}/checkmk-deployment"
CHECKMK_DEPLOYMENT_BACKUP_PATH="${HOME}/checkmk-deployment-backup"
```

## Copy systemd unit and timer files.
```bash
cp checkmk-deployment-backup.timer checkmk-deployment-backup.service /etc/systemd/system/
```

## Enable the timer.
```bash
systemctl daemon-reload
systemctl enable --now checkmk-deployment-backup.timer
```