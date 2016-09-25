FROM ubuntu:latest

MAINTAINER Dmitri Voronianski <dmitri.voronianski@gmail.com>

RUN apt-get update -qq
RUN apt-get install -qqy --force-yes build-essential curl

RUN curl -L https://github.com/luvit/lit/raw/master/get-lit.sh | sh
RUN install lit /usr/local/bin
RUN lit make lit://luvit/luvit
RUN install luvit /usr/local/bin

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.lua /usr/src/app/
RUN lit install

COPY . /usr/src/app

EXPOSE 8080
CMD ["luvit", "init.lua"]
