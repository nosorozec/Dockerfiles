### Uwaga musi być przed budowaniem
FROM ludw/python3:latest

MAINTAINER Konrad Ludwikowski <ludwikowski@gmail.com>


RUN pip3 install wheel && \
    pip3 install jupyterlab jupyter-git numpy matplotlib scipy scikit-learn pandas seaborn awscli \
                 altair vega_datasets notebook vega pyspark geopandas descartes

ENV PYSPARK_PYTHON=/usr/bin/python3

EXPOSE 8888

CMD ["/usr/local/bin/jupyter-lab", "--allow-root",  "--ip=0.0.0.0", "--port=8888", "--no-browser"]
