## SSL Certificate generation for Checkmk server.

### Generate Private Key.
```
openssl genrsa -out checkmk.mydomain.com.key 4096
```

### Generate CSR.
```
openssl req -new -key checkmk.mydomain.com.key -out checkmk.mydomain.com.csr
```

### Now use this CSR file to buy the SSL certificates from CA Or create self-signed.
```
openssl x509 -in  checkmk.mydomain.com.csr -out  checkmk.mydomain.com.crt -req -signkey  checkmk.mydomain.com.key -days 365
```

### Once done copy these certificates to certs directory ( `configs/certs` ) before running container.

