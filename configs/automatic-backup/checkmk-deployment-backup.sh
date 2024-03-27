#!/bin/bash

# Path where the Checkmk deployment is configured.
# NEED TO REPLACE THEASE TO CORRECT PATH.
CHECKMK_DEPLOYMENT_DIR="${HOME}/checkmk-deployment"
CHECKMK_DEPLOYMENT_BACKUP_PATH="${HOME}/checkmk-deployment-backup"

# Backup directory.
BACKUP_TIME=$(date "+%d%m%Y%H%M%S")
CHECKMK_DEPLOYMENT_BACKUP_DIR="${CHECKMK_DEPLOYMENT_BACKUP_PATH}/${BACKUP_TIME}"

cd "${CHECKMK_DEPLOYMENT_DIR}" || exit 1

# Backup configuration files.
mkdir -p "${CHECKMK_DEPLOYMENT_BACKUP_DIR}"

# Create backup.
mkdir -p ./checkmk-data/backups
chown -R 1000:1000 ./checkmk-data/backups
docker-compose exec -it checkmk omd backup cmk /omd/backups/checkmk-"${BACKUP_TIME}".tar.gz
mv -fv ./checkmk-data/backups/checkmk-"${BACKUP_TIME}".tar.gz "${CHECKMK_DEPLOYMENT_BACKUP_DIR}"/
sync
