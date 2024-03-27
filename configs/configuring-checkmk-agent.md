## Configuring Checkmk Agent.
https://docs.checkmk.com/latest/en/agent_linux.html

### Adding Host in Checkmk.
First we need to add a host in the Checkmk that will contains all the info related to the host system (eg. Hostname, IP Address etc).  
The Host can be added from `Setup > Hosts > Add host to the monitoring`
- Basic settings.
    - Hostname
        - `Add` hostname that will identify the host.
- Network address.
    - IP address family.
        - `Select` IPv4 only.
    - IPv4 address.
        - `Add` IP address of the host.
- Monitoring agents.
    - Checkmk agent / API integration.
        - `Select` API integration if configured, else checkmk agent.

### Configuring Agent on Debian Host.
The Checkmk Raw Edition provides all agent related configuration in the server. It can be accessed from `Setup > Agent > Linux`. Download the specific agent configuration for setup the agent. Download the latest agent package provided for the Debian distribution as a `.deb` file.

#### Install the package.
```bash
apt-get install -f ././check-mk-agent_*.deb
```

#### Agent port.
By default Agent uses TCP port `6556` for communication. This port must be enabled in the firewall.
```bash
ufw allow 6556/tcp
```

#### Register the Agent.
```bash
cmk-agent-ctl register --hostname HOSTNAME_THAT_ADDED_ABOVE --server checkmk.mydomain.com:8000 --site cmk --user automation --password 'AUTOMATION_USER_PASSWORD'
systemctl restart cmk-agent-ctl-daemon.service
```

### Applying the changes on Checkmk.
Now on the Checkmk server, we can check the `Run tests` and if everything works then we can apply the `Changes`.
This can be done from `Setup > Hosts > HOSTNAME_THAT_ADDED_ABOVE`
- `Select` Save & run service discovery.
    - `Select` Accept all or specific service which need to be monitored.

Now apply all the changes. This host has been added for monitoring in the Checkmk server.
