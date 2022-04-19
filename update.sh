#!/bin/bash

git reset --hard
git pull
docker-compose -f "$(dirname $0)"/docker-compose.yml pull
bash "$(dirname $0)"/boot.sh
