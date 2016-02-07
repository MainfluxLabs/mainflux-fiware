###
# Copyright (c) Mainflux
#
# Mainflux server is licensed under an Apache license, version 2.0 license.
# All rights not explicitly granted in the Apache license, version 2.0 are reserved.
# See the included LICENSE file for more details.
###
FROM centos:6

RUN yum update -y && yum install -y wget \
  && wget http://ftp.rediris.es/mirror/fedora-epel/6/i386/epel-release-6-8.noarch.rpm && yum localinstall -y --nogpgcheck epel-release-6-8.noarch.rpm \
  && yum install -y npm git

COPY . /opt/iota-mqtt
WORKDIR /opt/iota-mqtt
RUN npm install

ENTRYPOINT bin/iotagentMqtt.js config.js
