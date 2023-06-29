
mkdir -p certs2
#
# create ca.key
openssl genrsa -out certs2/ca.key 4096
# create ca.crt
openssl req -x509 -new -nodes -sha512 -days 3650 -subj "/C=US/ST=MA/L=Boston/O=Vmware/OU=Tanzu/CN=FynesyCA" -key certs2/ca.key -out certs2/ca.crt
# openssl 
# create tls.key
openssl genrsa -out certs2/tls.key 4096
openssl req -sha512 -new  -subj "/C=US/ST=MA/L=Boston/O=Vmware/OU=Tanzu/CN='myrepo-harbor.akslab.tap.fynesy.com'" -key certs2/tls.key -out certs2/tls.csr
openssl x509 -req -sha512 -days 3650 -extfile v3.ext -CA certs2/ca.crt -CAkey certs2/ca.key -CAcreateserial -in certs2/tls.csr -out certs2/tls.crt

