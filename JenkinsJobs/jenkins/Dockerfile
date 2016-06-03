FROM jenkins:1.651.1

MAINTAINER Damian Ospara version: 0.1

USER root

ENV MAVEN_VERSION 3.3.9
ENV MAVEN_ROOT    /var/lib/maven
ENV MAVEN_HOME    $MAVEN_ROOT/apache-maven-$MAVEN_VERSION
ENV MAVEN_UC      http://archive.apache.org/dist/maven/maven-3



RUN curl -kLO $MAVEN_UC/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
    echo "516923b3955b6035ba6b0a5b031fbd8b apache-maven-$MAVEN_VERSION-bin.tar.gz" | md5sum -c && \
    mkdir -p $MAVEN_ROOT && \
    gunzip apache-maven-$MAVEN_VERSION-bin.tar.gz &&\
    tar -xf apache-maven-$MAVEN_VERSION-bin.tar -C $MAVEN_ROOT &&\
    rm -f apache-maven-$MAVEN_VERSION-bin.tar*

ENV PATH=$MAVEN_HOME/bin:$PATH

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
