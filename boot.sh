#!/bin/bash
(
  # shellcheck disable=SC2164
  cd "$(dirname $0)"
  docker-compose -f docker-compose.yml up -d
)
