openssl req -newkey rsa:4096 -nodes -sha256 -keyout harborcert.key -addext "subjectAltName = DNS:myrepo-harbor.harbor.svc.cluster.local" -x509 -days 365 -out harborcert.crt
