### Uwaga musi być przed budowaniem
FROM ludw/python3:latest

MAINTAINER Konrad Ludwikowski <ludwikowski@gmail.com>

RUN pip3 install jupyter jupyter-git numpy matplotlib scipy scikit-learn pandas awscli

EXPOSE 8888

CMD ["/usr/local/bin/jupyter-notebook", "--allow-root",  "--ip=0.0.0.0", "--port=8888", "--no-browser"]
