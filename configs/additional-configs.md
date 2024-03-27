## Additional configuration to perform after deploying the Checkmk server.

### First thing before modifying anything on server is to set the `cmkadmin` user password and email address.

```Please note that followings configuration may not be accurate for every deployments. These settings allowed Admin to make sure the Checkmk server is configured with necessary additional configuration.```

## Navigate to the `Setup Panel` for modifying system-wide settings.
`Click show more option to show all the configuration options.`

### Users Settings.
- Users.
	- `Edit` user `cmkadmin`
		- Identity.
			- Configure `Email` address and `Full Name` for admin user.
			- Authorized sites.
				- `Select` All sites.
		- Security.
			- Authentication.
				- `Select` Normal user login with password.
				- `Password` Change the password.
		- Contact Groups.
			- `Select` Everything.
		- Notifications.
			- Fallback notifications.
				- `Select` Receive fallback notifications.
	- `Edit` user `automation`.
		- Security.
			- Authentication.
				- Automation secret for machine accounts.
					- Generate random secret. `This will be used with registering the agent.`

### General Settings.
- Global settings.
	- Notifications.
		- Fallback email address for notifications.
			- `Add` fallback email address of admin.
	- User management.
		- Lock user accounts after N logon failure.
			- `Change` number of logons failures to `5`.
		- Login session idle timeout.
			- `Change` it to 30 minutes.
		- Limit login to single session at a time.
			- `Select` Users can only login from one client at a time.
	- Support.
		- `Remove` both default crash report url and email address.


