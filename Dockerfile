FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update; apt-get -y install php7.2 php7.2-cli curl git

WORKDIR /root

RUN curl -sS https://getcomposer.org/installer | php

ADD run.sh /run.sh
RUN chmod +x /run.sh

WORKDIR /src

ENTRYPOINT ["/run.sh"]

CMD install
