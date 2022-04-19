#!/bin/bash

(
  # shellcheck disable=SC2164
  cd "$(dirname $0)"
  rm -f data/.lock
)
