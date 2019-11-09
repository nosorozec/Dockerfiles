dockerImage = "ludw/jupyter:latest"

.PHONY: docker

docker:
	docker rmi $(dockerImage) | true
	docker build . -t $(dockerImage)
