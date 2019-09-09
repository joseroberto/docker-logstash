FROM docker.elastic.co/logstash/logstash:7.2.0

ENV LOGSTASH_HOME /opt/logstash
WORKDIR ${LOGSTASH_HOME}

RUN rm -f /usr/share/logstash/pipeline/logstash.conf && \
  bin/logstash-plugin install logstash-filter-elapsed 

ADD pipeline/ /usr/share/logstash/pipeline/
ADD pattern/ /usr/share/logstash/pattern/
ADD config/ /usr/share/logstash/config/
