#!/bin/sh

apt-get update
apt-get dist-upgrade -y
apt-get install -y openjdk-7-jre curl
apt-get clean -y

curl -sL http://mirrors.jenkins-ci.org/war-stable/latest/jenkins.war >/opt/jenkins.war
chmod 644 /opt/jenkins.war
