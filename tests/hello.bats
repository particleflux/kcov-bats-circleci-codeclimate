#!/usr/bin/env bats

@test "hello without arguments" {
    result=$(bash $BATS_TEST_DIRNAME/../hello.sh)
    [[ "$result" == "Hello unknown" ]]
}

@test "hello with world argument" {
    result=$(bash $BATS_TEST_DIRNAME/../hello.sh world)
    [[ "$result" == "Hello World" ]]
}
