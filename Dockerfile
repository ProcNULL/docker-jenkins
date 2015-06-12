FROM debian:jessie
MAINTAINER Chronos <chronos@procnull.de>

ADD /scripts/ /opt/scripts/
RUN chmod 777 /opt/scripts/* && /opt/scripts/install.sh

VOLUME /var/lib/jenkins
WORKDIR /var/lib/jenkins
EXPOSE 8080

ENTRYPOINT ["/opt/scripts/start.sh"]