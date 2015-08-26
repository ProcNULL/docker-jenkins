#!/bin/sh

mkdir -p /jenkins
chown -R $UID /jenkins
chmod -R u+rwx /jenkins

sudo -u \#$UID -- env JENKINS_HOME=/jenkins /usr/bin/java $JENKINS_JAVA_ARGS -jar /opt/jenkins.war $JENKINS_ARGS
