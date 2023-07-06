kubectl -n harbor delete secret harborcerts
kubectl -n harbor create secret tls harborcerts --cert=tls.crt --key=tls.key
