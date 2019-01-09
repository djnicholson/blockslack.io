#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd $DIR
mkdir server
git pull
find . ! -path '*/\.*' ! -name 'CNAME' ! -name 'deploy.sh' -type f -exec rm -f {} +
cp ~/blockslack/deploy/* .
cp ~/blockslack/server/* server/
git add -u :/
git add *
git commit -a -m "Deployment"
git push

