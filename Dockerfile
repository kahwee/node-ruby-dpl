FROM node:7.10
RUN apt-get update -yq
RUN apt-get install default-jre zip unzip ruby -y
RUN apt-get install -y \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg

RUN set -xe \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list \
    && apt-get update \
    && apt-get install -y google-chrome-stable \
    && rm -rf /var/lib/apt/lists/*
    
RUN gem install dpl
