FROM ubuntu:latest

MAINTAINER Konrad Ludwikowski <ludwikowski@gmail.com>

RUN apt-get update && \
    apt-get install -y python3 apt-mirror

COPY mirror.list /etc/apt/
