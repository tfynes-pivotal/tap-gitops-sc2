kubectl -n tap-install create secret docker-registry \
--dry-run=client user-registry-dockerconfig \
--docker-server 'http://myrepo-harbor.harbor.svc.cluster.local' \
--docker-username=admin \
--docker-password='Q7zY8kAnVM' -o yaml  > user-registry-dockerconfig.yaml
