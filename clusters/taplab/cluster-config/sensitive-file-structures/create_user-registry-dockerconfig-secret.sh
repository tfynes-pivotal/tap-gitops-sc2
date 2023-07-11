kubectl -n tap-install create secret docker-registry \
--dry-run=client user-registry-dockerconfig \
--docker-server 'https://myrepo-harbor.akslab4.tap.fynesy.com' \
--docker-username=admin \
--docker-password='Harbor12345' -o yaml  > user-registry-dockerconfig.yaml
