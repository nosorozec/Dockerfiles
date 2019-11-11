FROM ubuntu:latest

MAINTAINER Konrad Ludwikowski <ludwikowski@gmail.com>

COPY services.sh /usr/local/bin/

RUN apt-get update && \
    apt-get install -y python3 apt-mirror && \
    chmod 7000 /usr/local/bin/services.sh

COPY mirror.list /etc/apt/

EXPOSE 9999

ENTRYPOINT ["/usr/local/bin/services.sh"]
