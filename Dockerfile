# bash on alpine
#
# VERSION               0.0.1

FROM alpine:latest
MAINTAINER Chaiwat Suttipongsakul "cwt@bashell.com"

# make sure the package repository is up to date
RUN apk update
RUN apk add bash
RUn sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd

