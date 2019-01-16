#!/usr/bin/env bash

if [[ ${TRAVIS_PULL_REQUEST} == "false" ]] && [[ ${TRAVIS_BRANCH} == "master" ]]; then
    tools/deploy.sh
    npx dredd init -r apiary -j apiaryApiKey:${APIARY_API_KEY} -j apiaryApiName:${APIARY_API_NAME}
    npx dredd
fi