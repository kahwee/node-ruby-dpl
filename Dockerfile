FROM node:8.4.0

RUN apt-get update -qqy \
  && apt-get install -qqy \
    default-jre \
    zip \
    unzip \
    ruby \
    curl \
    gnupg \
    xvfb \
    python-pip \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN yarn global add npm

RUN gem install dpl

RUN pip install s3cmd awscli
 
