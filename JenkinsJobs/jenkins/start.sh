#!/bin/bash

docker run -d --name arapso-jenkins -v `pwd`/jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 arapso/jenkins
