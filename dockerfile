#!/bin/sh

#FROM maven:3.8.4-eclipse-temurin-17-alpine
FROM maven:3.8.4-eclipse-temurin-17 as builder
LABEL maintainer "oliver.avarello@meta-level.de"

RUN apt-get update && apt-get upgrade -y

RUN apt install docker.io -y


FROM builder

RUN git clone -b main https://github.com/revilo-av/test.git /app/test01


WORKDIR /app/test01

#RUN git checkout development

RUN mvn dependency:go-offline


#CMD ["sleep", "2500"]
CMD mvn clean compile jib:dockerBuild