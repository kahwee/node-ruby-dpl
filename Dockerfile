FROM node:7.1
RUN apt-get update -yq
RUN apt-get install default-jre -y
RUN apt-get install zip -y
RUN apt-get install unzip -y
RUN apt-get install ruby -y
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN gem install dpl
