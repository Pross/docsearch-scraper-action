#!/bin/sh
set -e

sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10

cd /root/docsearch-scraper
touch .env
pipenv install

sh -c "pipenv run ./docsearch $*"
