FROM ubuntu:latest

MAINTAINER Damian Ospara version: 0.1


RUN apt-get update
RUN apt-get install --yes wget
RUN wget -qO- https://deb.nodesource.com/setup_4.x | sudo bash -
RUN apt-get install --yes nodejs
RUN apt-get clean

RUN npm install -g angular-cli

VOLUME /app

COPY ./start.sh /
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
