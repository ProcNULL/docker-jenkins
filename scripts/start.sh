#!/bin/sh

chown -R $UID "$HOME"
cd "$HOME"
sudo -u "#$UID" /usr/bin/java $JENKINS_JAVA_ARGS -jar /opt/jenkins.war $JENKINS_ARGS
