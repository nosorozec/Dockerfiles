#docker run -d -p 9999:9999  -v /tankz2/apt-mirror:/apt-mirror ludw/aptmirror

dockerImage = "ludw/aptmirror:latest"

.PHONY: docker

docker:
	docker rmi $(dockerImage) | true
	docker build . -t $(dockerImage)
