mkdir -p certs
openssl req -newkey rsa:4096 -nodes -sha256 -keyout certs/tls.key -addext "subjectAltName = DNS:myrepo-harbor.akslab.tap.fynesy.com" -x509 -days 365 -out certs/tls.crt
