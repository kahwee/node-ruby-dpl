FROM node:5.9
RUN apt-get update -yq
RUN apt-get install default-jre -y
RUN apt-get install ruby -y
RUN gem install dpl
