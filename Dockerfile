FROM node:7.10
RUN apt-get update -yq
RUN apt-get install default-jre zip unzip ruby -y
RUN npm i -g npm@5
RUN gem install dpl
