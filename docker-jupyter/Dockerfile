FROM ubuntu:latest
MAINTAINER Konrad Ludwikowski <ludwikowski@gmail.com>


#nie instaluję na biblioteki torch => jest olbrzymia

RUN apt-get update && \
    apt-get install -y \
      locales \
      python3-pip \
      python3-dev \
      git && \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen

RUN pip3 install jupyter jupyter-git numpy matplotlib scipy scikit-learn pandas

ENV LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8

EXPOSE 8888

CMD ["/usr/local/bin/jupyter-notebook", "--allow-root",  "--ip=0.0.0.0", "--port=8888", "--no-browser"]
