#!/bin/bash

docker run  --link=arapso-jenkins -it --name arapso-jenkins-job-builder  arapso/jenkins_job_builder
