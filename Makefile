IMAGE := slamdev/spring-cloud-config-server

.PHONY: build
build:
	docker build -t $(IMAGE) .
	docker push $(IMAGE)
