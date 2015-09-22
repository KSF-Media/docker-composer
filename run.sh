#!/bin/bash

cd /src

arg="install"

if [ ! $1 == "" ]; then
    arg=$@
fi

php /root/composer.phar $arg
