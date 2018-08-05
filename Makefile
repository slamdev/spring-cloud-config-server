IMAGE := slamdev/spring-cloud-config-server

.PHONY: build
build:
	docker build -t $(IMAGE) .
	docker push $(IMAGE)

.PHONY: test
test:
	curl http://config-server.svc.cluster.local/application/default | jq
