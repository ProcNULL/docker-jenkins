#!/bin/sh

#Jenkins version (use "latest" for latest)
JENKINS_VER="1.609.1"

apt-get update
apt-get install -y openjdk-7-jre curl sudo openjdk-7-jdk git
apt-get clean -y

curl -sL "http://mirrors.jenkins-ci.org/war-stable/$JENKINS_VER/jenkins.war" >/opt/jenkins.war
chmod 644 /opt/jenkins.war
