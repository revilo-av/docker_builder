#!/bin/sh

#FROM maven:3.8.4-eclipse-temurin-17-alpine
FROM maven:3.8.4-eclipse-temurin-17 as builder
LABEL maintainer "oliver.avarello@meta-level.de"

RUN apt-get update && apt-get upgrade -y

RUN apt install docker.io -y