#ciągniemy wszystkie pakiety z 18.04/bionic
FROM ubuntu:bionic
MAINTAINER Konrad Ludwikowski <ludwikowski@gmail.com>

COPY sources.list /etc/apt/
COPY ACCC4CF8.asc /tmp

ENV LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      locales \
      gnupg \
      openjdk-8-jdk \
      python3-pip \
      python3-dev \
      python3-setuptools \
      git vim curl tzdata sudo dstat && \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen && \
    ln -fs /usr/share/zoneinfo/Europe/Warsaw /etc/localtime && \
    dpkg-reconfigure tzdata

COPY add-local-repos.list /etc/apt/sources.list.d/

RUN apt-key add /tmp/ACCC4CF8.asc

CMD ["/bin/bash", "-l"]
