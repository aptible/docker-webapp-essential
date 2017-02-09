#!/usr/bin/env bats

@test "It should install Node v0.10.33" {
  node -v | grep v0.10.33
}

@test "It should install NPM" {
  which npm
}

@test "It should install Ruby 2.1.5" {
  ruby -v | grep 2.1.5
}

@test "It should install Bundler" {
  which bundler
}

@test "It should install Python 3.4.2" {
  run python --version
  [[ $output =~ "3.4.2" ]]
}
