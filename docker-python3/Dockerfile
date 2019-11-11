FROM ubuntu:latest
MAINTAINER Konrad Ludwikowski <ludwikowski@gmail.com>

#nie instaluję na biblioteki torch => jest olbrzymia

RUN apt-get update && \
    apt-get install -y \
      locales \
      python3-pip \
      python3-dev \
      git vim && \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen

ENV LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8

CMD ["/bin/bash", "-l"]
