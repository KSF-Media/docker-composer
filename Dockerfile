FROM ubuntu:14.04

RUN apt-get update; apt-get -y install php5 php5-cli curl

WORKDIR /root

RUN curl -sS https://getcomposer.org/installer | php

WORKDIR /src

CMD php /root/composer.phar install
