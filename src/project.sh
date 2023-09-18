#!/usr/bin/env bash

set -e

alt_function() {
  echo "Goodbye"
}

main() {
  echo "Hello world!"
}

${@:-main}
