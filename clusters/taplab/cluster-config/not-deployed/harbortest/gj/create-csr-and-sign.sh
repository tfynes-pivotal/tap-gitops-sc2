
#
# create ca.key
openssl genrsa -out ca.key 4096
# create ca.crt
openssl req -x509 -new -nodes -sha512 -days 3650 -subj "/C=US/ST=MA/L=Boston/O=Vmware/OU=Tanzu/CN=FynesyCA" -key ca.key -out ca.crt
# openssl 
# create tls.key
openssl genrsa -out tls.key 4096
openssl req -sha512 -new  -subj "/C=US/ST=MA/L=Boston/O=Vmware/OU=Tanzu/CN='myrepo-harbor.akslab.tap.fynesy.com'" -key tls.key -out tls.csr
openssl x509 -req -sha512 -days 3650 -extfile v3.ext -CA ca.crt -CAkey ca.key -CAcreateserial -in tls.csr -out tls.crt

