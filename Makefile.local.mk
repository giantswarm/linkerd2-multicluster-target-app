##@ Chart

.PHONY: update-chart
update-chart: ## Run vendir and patch upstream charts
	@echo "====> $@"
	vendir sync -l
	rm -rf ./helm/linkerd-multicluster/charts
	mkdir -p ./helm/linkerd-multicluster/charts
	cp -r ./vendor/linkerd-multicluster/multicluster/charts/linkerd-multicluster ./helm/linkerd-multicluster/charts/linkerd-multicluster
	cp -r ./vendor/linkerd-multicluster/charts/partials ./helm/linkerd-multicluster/charts/partials