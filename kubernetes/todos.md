
# generate kubeconfig secret
kubectl -n tutor create secret generic kubeconfig --from-file config --dry-run=client  -o yaml > 06_kubeconfig.yaml  

ip address of api-server