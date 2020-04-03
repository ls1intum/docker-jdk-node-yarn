FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    openjdk-14-jdk \
    openjdk-14-demo \
    openjdk-14-doc \
    openjdk-14-jre-headless \
    openjdk-14-source \
 && curl -sL https://deb.nodesource.com/setup_13.x | bash - \
 && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update && apt-get install -y \
    nodejs \
    yarn \
 && rm -rf /var/lib/apt/lists/*