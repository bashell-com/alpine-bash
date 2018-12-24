# bash on alpine

FROM docker.io/bashell/alpine:3.8.2

# make sure the package repository is up to date
RUN apk update \
 && apk upgrade \
 && apk add bash \
 && rm -rf /var/cache/*/*

# change default shell from ash to bash
RUN sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd

ENV LC_ALL=en_US.UTF-8

WORKDIR /root

