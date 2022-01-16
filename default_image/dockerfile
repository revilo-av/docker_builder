#!/bin/sh

#FROM maven:3.8.4-eclipse-temurin-17-alpine
FROM maven:3.8.4-eclipse-temurin-17
LABEL maintainer "oliver.avarello@meta-level.de"


RUN apt-get update && apt-get upgrade -y

#RUN apt install docker.io -y


WORKDIR /app

RUN git clone -b main https://github.com/revilo-av/test.git /app/test01

WORKDIR /app/test01

#RUN mvn clean compile jib:dockerBuild
RUN echo "Hallo Welt"

CMD ["sleep", "2500"]