#!/usr/bin/env bash

if [[ ${TRAVIS_PULL_REQUEST} == "false" ]] && [[ ${TRAVIS_BRANCH} == "master" ]]; then
    tools/deploy.sh
fi