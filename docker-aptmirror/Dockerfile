FROM ubuntu:bionic

MAINTAINER Konrad Ludwikowski <ludwikowski@gmail.com>

COPY services.sh /usr/local/bin/

RUN apt-get update && \
    apt-get install -y vim python3 cron apt-mirror && \
    chmod 700  /usr/local/bin/services.sh

COPY mirror.list /etc/apt/

EXPOSE 9999

CMD ["/usr/local/bin/services.sh"]


#docker run -d -p 9999:9999  -v /tankz2/apt-mirror:/apt-mirror ludw/aptmirror
#apt-get install postgresql-12-postgis-3
