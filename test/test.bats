#!/usr/bin/env bats

setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'

    DIR="$(cd "$(dirname "$BATS_TEST_FILENAME")" >/dev/null 2>&1 && pwd)"
    PATH="$DIR/../src:$PATH"
}

@test "Script can run" {
    run project.sh
}

@test "Check welcome message" {
    run project.sh
    assert_output --partial 'Hello'
}

@test "Check alternative function" {
    run project.sh alt_function
    assert_output --partial 'Goodbye'
}

@test "Check function can return value" {
    run project.sh return_value "value"
    assert_output --partial 'value'
}

