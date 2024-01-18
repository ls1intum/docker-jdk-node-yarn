FROM maven:3-eclipse-temurin-17

MAINTAINER Stephan Krusche <krusche@in.tum.de>

RUN apt-get update && apt-get upgrade -y && apt-get install -y locales

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update && apt-get install -y \
    gnupg \
 && curl -sL https://deb.nodesource.com/setup_20.x | bash - \
 && apt-get update && apt-get install -y \
    nodejs \
 && rm -rf /var/lib/apt/lists/*
 
# update npm to use the latest version
RUN npm install -g npm@latest

ENV M2_HOME /usr/share/maven

RUN echo "$LANG -- $LANGUAGE -- $LC_ALL" \
    && curl --version \
    && gpg --version \
    && git --version \
    && mvn --version \
    && java --version \
    && javac --version \
    && node --version \
    && npm --version
