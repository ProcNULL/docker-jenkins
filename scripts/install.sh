#!/bin/sh

apt-get update
apt-get dist-upgrade
apt-get install openjdk-7-jre curl
apt-get clean

curl -sL http://mirrors.jenkins-ci.org/war-stable/latest/jenkins.war >/opt/jenkins.war
chmod 644 /opt/jenkins.war
