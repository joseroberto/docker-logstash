FROM logstash:7.3.1

RUN rm -f /usr/share/logstash/pipeline/logstash.conf && \
  bin/logstash-plugin install logstash-filter-elapsed 

ADD dinamo.conf /usr/share/logstash/pipeline/
ADD pattern/ /usr/share/logstash/pattern/
ADD config/ /usr/share/logstash/config/
