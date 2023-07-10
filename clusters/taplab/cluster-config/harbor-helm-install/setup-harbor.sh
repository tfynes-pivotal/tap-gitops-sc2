helm repo add harbor https://helm.goharbor.io
helm pull harbor/harbor
tar xvf ./harbor-1.12.2.tgz
cd harbor
mv values.yaml values.yaml.original
cp ../harbor-values.yaml ./values.yaml
kubectl create ns harbor
helm -n harbor install myrepo .
cd ..
rm -r ./harbor
rm ./harbor-1.12.2.tgz

