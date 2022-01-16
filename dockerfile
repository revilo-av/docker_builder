#!/bin/sh

#FROM maven:3.8.4-eclipse-temurin-17-alpine
FROM maven:3.8.4-eclipse-temurin-17
LABEL maintainer "oliver.avarello@meta-level.de"

# RUN apt-get update -y
#WORKDIR /opt

## Nodejs
#RUN apk update
#RUN apk upgrade
RUN apt-get update && apt-get upgrade -y

#RUN apt install docker.io -y


WORKDIR /app

RUN git clone -b main https://github.com/revilo-av/test.git /app/test01
#RUN git clone -b main  https://github.com/revilo-av/test.git /app/test02
#RUN git clone -b main https://github.com/revilo-av/test.git /app/test03

WORKDIR /app/test01

#RUN mvn clean compile jib:dockerBuild
RUN echo "Hallo Welt"

CMD ["sleep", "2500"]
#CMD ["ng", "serve", "--host", "0.0.0.0"]
#docker pull maven:3.8-eclipse-temurin-17-alpine
#docker pull maven:3.8.4-eclipse-temurin-17-alpine