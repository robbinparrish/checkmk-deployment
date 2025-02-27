## Upgrading Checkmk to latest Stable Release.

**NOTE** - Before proceeding further please make sure that you have created a backup. If not then follow [Backup and Restore](./backup-and-restore.md) to create a backup.

A detailed information for upgrading to a major released version can be found [here](https://docs.checkmk.com/latest/en/update_major.html).

### Identify the latest released version.
- https://hub.docker.com/r/checkmk/check-mk-raw/tags
- https://hub.docker.com/_/nginx/tags

Once the latest released version is identified we can update the corresponding version in the [docker-compose.yml](./../docker-compose.yml) file.

Once version is updated, recreate container so it can use new version.

### Upgrading the container.
```bash
docker-compose up -d
```

### Checking the container logs.
```bash
docker-compose logs -f
```
