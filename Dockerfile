FROM tpires/alpine-jboss-base
MAINTAINER Tiago Pires <tandrepires@gmail.com>

# Use root to install software
USER root

# Install openjdk-8 (experimental)
RUN echo 'http://dl-3.alpinelinux.org/alpine/edge/testing/' >> /etc/apk/repositories  \
    && apk add --update curl wget ca-certificates openjdk8-jre

# Fix missing libjli.so
RUN ln -s /usr/lib/jvm/java-1.8-openjdk/jre/lib/amd64/jli/libjli.so /lib/libjli.so 

# Switch to default user
USER jboss

# Set JAVA_HOME environment variable
ENV JAVA_HOME /usr/lib/jvm/default-jvm
