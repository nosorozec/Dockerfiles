dockerImage = "ludw/aptmirror:latest"

.PHONY: docker

docker:
	docker rmi $(dockerImage) | true
	docker build . -t $(dockerImage)
