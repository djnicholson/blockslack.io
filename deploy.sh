#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd $DIR
git pull
find . ! -path '*/\.*' ! -name 'CNAME' ! -name 'deploy.sh' -type f -exec rm -f {} +
cp ~/blockslack/deploy/* .
git add -u :/
git add *
git commit -a -m "Deployment"
git push

