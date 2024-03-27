## Disclaimer.
The content on this account/repository provided solely for educational and informational purposes.
It is not intended for use in making any kind of business, investment and/or legal decisions.
Although every effort has been made to keep the information up-to-date and accurate, no representations and/or warranties, express and/or implied, completeness, accuracy, reliability, suitability, and/or availability of the content.

## Checkmk.
This can be used to setup a Checkmk Raw Edition Server.  
Checkmk - https://docs.checkmk.com/latest/en/

## Docker Compose Version.
Always validate that [docker-compose](https://github.com/docker/compose/releases/) version is latest.
If not then use the latest released version. As of updating this document `v2.24.0` was latest released version.

### Starting the container.
```bash
docker-compose up -d
```

### Checking the container logs.
```bash
docker-compose logs -f
```

### Once Container is successfully created, we can access the webui in the browser - http://IPADDR_OF_SYSTEM

#### Retrieving the default password for default admin user `cmkadmin`.
```bash
docker-compose logs checkmk | grep "The admin user for the web applications is "
```

### Setting up first time.
- https://docs.checkmk.com/latest/en/user_interface.html

[Additional Configuration](./configs/additional-configs.md)

[Backup and Restore](./configs/backup-and-restore.md)

[Upgrading Checkmk](./configs/upgrading-checkmk.md)

[Configuring Checkmk Agent](./configs/configuring-checkmk-agent.md)
