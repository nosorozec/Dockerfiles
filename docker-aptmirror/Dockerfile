FROM ubuntu:latest

MAINTAINER Konrad Ludwikowski <ludwikowski@gmail.com>

COPY services.sh /usr/local/bin/

RUN apt-get update && \
    apt-get install -y python3 cron apt-mirror && \
    chmod 700  /usr/local/bin/services.sh

COPY mirror.list /etc/apt/

EXPOSE 9999

CMD ["/usr/local/bin/services.sh"]
