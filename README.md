# docker-jenkins
Debian 8 with latest stable Jenkins

## Building
`docker build -t procnull/jenkins https://github.com/ProcNULL/docker-jenkins.git`

## Running
`docker run --name jenkins -p 8080:8080 -v <path>:/var/lib/jenkins -e JENKINS_UID=<UID> procnull/jenkins`

<UID> is the uid that jenkins should run with (e.g. 65534 for 'nobody').
<path> is the path, where jenkins data should be stored.
Note that <UID> must own wall files in <path>!
