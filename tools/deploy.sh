#!/bin/bash
set -e

rev=$(git rev-parse --short HEAD)

git config user.name "$GH_USERNAME"
git config user.email "$GH_EMAIL"

git remote add upstream "https://$GH_TOKEN@github.com/myanimestream/grobber-api-docs.git"
git fetch upstream
git reset upstream/master

touch .

git add --all --force apiary.apib
git commit --all --message "chore: deploy ${rev}"
git push --quiet upstream HEAD:master > /dev/null 2>&1
