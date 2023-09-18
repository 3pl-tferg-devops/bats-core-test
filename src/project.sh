#!/usr/bin/env bash

set -e

main() {
  echo "Hello world!"
}

${@:-main}
