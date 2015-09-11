FROM ubuntu:14.04

RUN apt-get update; apt-get -y install php5 php5-cli curl

WORKDIR /root

RUN curl -sS https://getcomposer.org/installer | php

ADD run.sh /run.sh
RUN chmod +x /run.sh

WORKDIR /src

ENTRYPOINT ["/run.sh"]

CMD install
