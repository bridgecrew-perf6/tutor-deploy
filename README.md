
# kubeconfig creation
* kubectl -n tutor create secret generic kubeconfig --from-file config --dry-run=client  -o yaml > kubeconfig.yaml  
* ip address of api-server

# preps
helm show values ./kubernetes/tutor > values_defaults.yaml  
helm install tutor ./kubernetes/tutor --create-namespace --namespace tutor --values kubernetes/values.yaml > tutor.yaml

# install
helm install tutor ./kubernetes/tutor --create-namespace --namespace tutor --values kubernetes/values.yaml

# upgrade
helm upgrade tutor ./kubernetes/tutor --create-namespace --namespace tutor --values kubernetes/values.yaml

# uninstall
helm uninstall tutor