.PHONY: k8s-install
k8s-install:
	helm install tutor ./kubernetes/tutor --create-namespace --namespace tutor --values kubernetes/values.yaml

.PHONY: k8s-upgrade
k8s-upgrade:
	helm upgrade tutor ./kubernetes/tutor --create-namespace --namespace tutor --values kubernetes/values.yaml

.PHONY: k8s-patch
k8s-patch:
	helm uninstall tutor
	helm install tutor ./kubernetes/tutor --create-namespace --namespace tutor --values kubernetes/values.yaml
