FROM ubuntu:latest
MAINTAINER Konrad Ludwikowski <ludwikowski@gmail.com>

RUN apt-get update && \
    apt-get install -y \
      python3-pip \
      python3-dev \
      git && \
    pip3 install jupyter jupyter-git numpy panda matplotlib

EXPOSE 8888

CMD ["/usr/local/bin/jupyter-notebook", "--allow-root",  "--ip=0.0.0.0", "--port=8888", "--no-browser"]
