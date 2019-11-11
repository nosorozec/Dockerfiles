FROM ludw/python3

MAINTAINER Konrad Ludwikowski <ludwikowski@gmail.com>

COPY mirror.list /etc/apt/

RUN apt-get update && \
    apt-get install apt-mirror

ENV LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8
