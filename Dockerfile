# bash on alpine
#
# VERSION               0.0.3

FROM alpine:latest
MAINTAINER Chaiwat Suttipongsakul "cwt@bashell.com"

# make sure the package repository is up to date
RUN apk update && apk upgrade
RUN apk add bash
RUN sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd

ENV LC_ALL=en_US.UTF-8
WORKDIR /root

