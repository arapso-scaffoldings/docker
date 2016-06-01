FROM ubuntu:15.04
MAINTAINER Damian Ospara version: 0.1

RUN apt-get update
RUN apt-get install -y software-properties-common

RUN add-apt-repository -y universe

RUN apt-get install -y python-software-properties

RUN apt-get update && apt-get install -y python-setuptools python-dev libyaml-dev git curl python-pip python-yaml
RUN pip install pbr PyYAML python-jenkins jenkins-job-builder jenkins-jobs-slack
ADD config /config
ADD jobs /jobs
VOLUME /jobs
VOLUME /config

CMD jenkins-jobs --conf /config/jenkins_jobs.ini update --delete-old /jobs
#CMD bash
