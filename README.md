# docker-logstash

docker run --rm -it --rm --name logstash \
-v ${PWD}/pipeline:/usr/share/logstash/pipeline \
-v ${PWD}/file:/mnt \
-v ${PWD}/config:/usr/share/logstash/config \
-v ${PWD}/pattern:/usr/share/logstash/pattern \
docker.elastic.co/logstash/logstash:7.2.0 -f pipeline/dinamo.conf

docker run --rm -it --rm --name logstash docker.elastic.co/logstash/logstash:7.2.0 /bin/bash