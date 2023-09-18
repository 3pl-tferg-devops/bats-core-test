#!/usr/bin/env bash

set -e

return_value() {
  local value=$1

  return $value
}

alt_function() {
  echo "Goodbye"
}

main() {
  echo "Hello world!"
}

${@:-main}
