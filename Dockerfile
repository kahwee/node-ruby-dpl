FROM node:8.2.1

RUN apt-get update -qqy \
  && apt-get install -qqy \
    default-jre \
    zip \
    unzip \
    ruby \
    curl \
    gnupg \
    xvfb
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN yarn global add npm

RUN gem install dpl
