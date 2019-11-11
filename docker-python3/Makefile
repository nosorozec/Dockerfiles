dockerImage = "ludw/python3:latest"

.PHONY: docker

docker:
	docker rmi $(dockerImage) | true
	docker build . -t $(dockerImage)
