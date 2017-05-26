FROM node:7.10
RUN apt-get update -yq
RUN apt-get install default-jre zip unzip ruby -y
RUN gem install dpl
