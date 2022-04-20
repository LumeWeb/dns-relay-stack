#!/bin/bash
(
  # shellcheck disable=SC2164
  cd "$(dirname $0)"
  mkdir data
  touch data/.env
  docker-compose -f docker-compose.yml up -d
)
