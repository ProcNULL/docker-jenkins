#!/bin/sh

[ -z "$(cat /etc/passwd | grep jenkins)" ] && useradd -U -d "$HOME" -p 1234 -s /bin/false jenkins
chown -R jenkins "$HOME"
cd "$HOME"
sudo -u jenkins /usr/bin/java $JENKINS_JAVA_ARGS -jar /opt/jenkins.war $JENKINS_ARGS
