#!/usr/bin/env bash

if [[ ${TRAVIS_PULL_REQUEST} == "false" ]] && [[ ${TRAVIS_BRANCH} == "master" ]]; then
    bash tools/deploy.sh
fi