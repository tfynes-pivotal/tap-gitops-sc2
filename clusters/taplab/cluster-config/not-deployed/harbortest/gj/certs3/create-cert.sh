openssl rand -writerand ~/.rnd
openssl req \
    -newkey rsa:2048 \
    -x509 \
    -nodes \
    -keyout tls.key \
    -new \
    -out tls.crt \
    -subj /CN=myrepo-harbor.akslab.tap.fynesy.com \
    -reqexts SAN \
    -extensions SAN \
    -config <(cat /System/Library/OpenSSL/openssl.cnf \
        <(printf '[SAN]\nsubjectAltName=DNS:myrepo-harbor.akslab.tap.fynesy.com')) \
    -sha256 \
    -days 3650
