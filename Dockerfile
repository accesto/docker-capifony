FROM debian:jessie

MAINTAINER Michal Kurzeja accesto.com

RUN apt-get update && apt-get install -y rubygems git
RUN gem install capifony hipchat && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN adduser --disabled-password -q --home /data capistrano 

WORKDIR /data
VOLUME /data
USER capistrano
ENTRYPOINT ["cap"]
