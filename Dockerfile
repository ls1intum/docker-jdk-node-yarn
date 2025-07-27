FROM maven:3.9.11-eclipse-temurin-21

LABEL maintainer="Stephan Krusche <krusche@tum.de>"

RUN apt-get update && apt-get upgrade -y && apt-get install -y locales

# Set the locale
RUN locale-gen en_US.UTF-8

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    M2_HOME=/usr/share/maven

# Also install Java 17 (needed for running PE templates)
RUN apt-get update && apt-get install -y --no-install-recommends gnupg openjdk-17-jdk  && \
    curl -sL https://deb.nodesource.com/setup_24.x | bash - && \
    apt-get update && apt-get install -y --no-install-recommends nodejs && \
    rm -rf /var/lib/apt/lists/*

# update npm to use the latest version
RUN npm install -g npm@11.4.2

RUN echo "$LANG -- $LANGUAGE -- $LC_ALL" \
    && curl --version \
    && gpg --version \
    && git --version \
    && mvn --version \
    && java --version \
    && javac --version \
    && node --version \
    && npm --version
