FROM node
RUN apt-get update -yq
RUN apt-get install ruby -y
RUN gem install dpl
