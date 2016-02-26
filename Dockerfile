FROM debian:jessie

MAINTAINER Michal Kurzeja accesto.com

RUN apt-get update && apt-get install -y rubygems git
RUN gem install capifony hipchat

RUN adduser --disabled-password -q --home /data capistrano 

WORKDIR /data
VOLUME /data
USER capistrano
