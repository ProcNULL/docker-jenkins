FROM debian:jessie
MAINTAINER Chronos <chronos@procnull.de>

ADD /scripts/ /opt/scripts/
RUN chmod 777 /opt/scripts/*; sleep 1; /opt/scripts/install.sh

VOLUME /jenkins
ENV UID=65534
EXPOSE 8080

ENTRYPOINT ["/opt/scripts/start.sh"]
