FROM node:8.2.1

RUN apt-get update -qqy \
  && apt-get install -qqy \
    default-jre \
    zip \
    unzip \
    ruby \
    apt-transport-https \
    ca-certificates \
    ttf-wqy-zenhei \
    curl \
    gnupg \
    xvfb

RUN yarn global add npm

RUN gem install dpl

RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/*
