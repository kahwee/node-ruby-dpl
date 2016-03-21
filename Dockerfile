FROM node:5.9-onbuild
RUN apt-get update -yq
RUN apt-get install ruby -y
RUN gem install dpl
