FROM debian:jessie
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y install openjdk-7-jre wget
RUN wget https://download.elasticsearch.org/kibana/kibana/kibana-4.0.0-BETA2.tar.gz -O /tmp/kibana.tar.gz && \
    tar zxf /tmp/kibana.tar.gz && mv kibana-4.0.0-BETA2/ /opt/kibana 
COPY kibana.conf /opt/kibana/conf/kibana.yml 
CMD ["/opt/kibana/bin/kibana"]
