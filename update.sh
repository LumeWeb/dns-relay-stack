#!/bin/bash

(
  # shellcheck disable=SC2164
  cd "$(dirname $0)"
  git reset --hard
  git pull
  docker-compose -f docker-compose.yml pull
  bash "$(dirname $0)"/boot.sh
)

docker image prune -f
