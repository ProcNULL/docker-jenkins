#!/bin/sh

[ -n "$(cat /etc/passwd | grep \":$UID:65534:\")" ] || useradd -u $UID -g nogroup -d "$HOME" -p 1234 -s /bin/false jenkins
chown -R jenkins "$HOME"
chmod -R 700 "$HOME"
cd "$HOME"
sudo -u jenkins /usr/bin/java $JENKINS_JAVA_ARGS -jar /opt/jenkins.war $JENKINS_ARGS
