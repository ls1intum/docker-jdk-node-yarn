FROM ubuntu:19.10

RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    git \
    openjdk-14-jdk \
    maven \
 && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
 && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update && apt-get install -y \
    nodejs \
    yarn \
 && rm -rf /var/lib/apt/lists/*

ENV M2_HOME /usr/share/maven
