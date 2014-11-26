FROM ingensi/oracle-jdk:7u65
ADD https://download.elasticsearch.org/kibana/kibana/kibana-4.0.0-BETA2.tar.gz /tmp/kibana.tar.gz
RUN yum -y install tar && tar zxf /tmp/kibana.tar.gz && mv kibana-4.0.0-BETA2/ /opt/kibana 
COPY kibana.yml /opt/kibana/config/kibana.yml 
CMD ["/opt/kibana/bin/kibana"]
