FROM ubuntu:latest
MAINTAINER Konrad Ludwikowski <ludwikowski@gmail.com>

COPY sources.list /etc/apt/


ENV LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
      locales \
      python3-pip \
      python3-dev \
      git vim curl tzdata && \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen && \
    ln -fs /usr/share/zoneinfo/Europe/Warsaw /etc/localtime && \
    dpkg-reconfigure tzdata


CMD ["/bin/bash", "-l"]
