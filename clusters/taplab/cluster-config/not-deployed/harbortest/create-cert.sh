
#openssl genrsa -out tls.key 4096
#openssl req -x509 -new -nodes -sha512 -days 3650 -subj "/C=CN/ST=Boston/L=Boston/O=example/OU=Personal/CN=myrepo-harbor.harbor.svc.cluster.local" -key tls.key 

#kubectl -n harbor delete secret harborcerts
#kubectl -n harbor create secret generic harborcerts --from-file=./tls.crt --from-file=tls.key

# this cert allowed tap to install
#openssl req -newkey rsa:4096 -nodes -sha256 -keyout tls.key -addext "subjectAltName = DNS:myrepo-harbor.akslab4.tap.fynesy.com" -x509 -days 365 -out tls.crt
#kubectl -n harbor delete secret harborcerts
#kubectl -n harbor create secret generic harborcerts --from-file=./tls.crt --from-file=tls.key

openssl req -newkey rsa:4096 -nodes -sha256 -keyout tls.key -addext "subjectAltName = DNS:myrepo-harbor.akslab4.tap.fynesy.com" -x509 -days 365 -out tls.crt
kubectl -n harbor delete secret harborcerts
kubectl -n harbor create secret generic harborcerts --from-file=./tls.crt --from-file=tls.key

#helm pull harbor/harbor
#tar xvf ./harbor-1.12.2.tgz
#cd harbor/
#helm -n harbor delete myrepo
#helm -n harbor install myrepo .
