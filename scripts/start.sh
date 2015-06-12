#!/bin/sh

# Run as 'nobody' by default
[ -z "$JENKINS_UID" ] && JENKINS_UID=65534

sudo -u "$JENKINS_UID" /usr/bin/java $JENKINS_JAVA_ARGS -jar /opt/jenkins.jar $JENKINS_ARGS
