#!/bin/sh

export HOME=/home/jenkins
mkdir -p $HOME
chown -R $UID:$UID $HOME
chmod -R 700 $HOME

chown -R $UID /jenkins
chmod -R u+rwx /jenkins

sudo -u \#$UID /usr/bin/java $JENKINS_JAVA_ARGS -jar /opt/jenkins.war $JENKINS_ARGS
