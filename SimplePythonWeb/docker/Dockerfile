FROM ubuntu:latest

MAINTAINER Damian Ospara version: 0.1

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y libapache2-mod-wsgi
RUN apt-get install -y python-pip
RUN apt-get clean

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

VOLUME /opt/pigui-web
RUN ln -s /opt/pigui-web /var/www/pigui

ADD config /pigui-config
RUN pip install -r /pigui-config/requirements.txt

EXPOSE 80 5000

COPY ./start.sh /
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
