FROM ludw/python3

MAINTAINER Konrad Ludwikowski <ludwikowski@gmail.com>

COPY mirror.list /etc/apt/

RUN apt-get update && \
    apt-get install apt-mirror
