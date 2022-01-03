.PHONY: deploy
deploy:
	kubectl apply -f .

.PHONY: destroy
destroy:
	kubectl delete -f . --force

.PHONY: k8s-patch
k8s-patch:
	kubectl -n tutor apply -f 06_kubeconfig.yaml
	kubectl -n tutor rollout restart deployment tutor  
