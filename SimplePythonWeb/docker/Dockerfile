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

VOLUME /opt/web
RUN ln -s /opt/web /var/www/web

ADD config /web-config
RUN pip install -r /web-config/requirements.txt
RUN cp /web-config/web.conf /etc/apache2/sites-available/web.conf
RUN a2dissite 000-default.conf
RUN a2ensite web.conf

EXPOSE 80 5000

COPY ./start.sh /
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
