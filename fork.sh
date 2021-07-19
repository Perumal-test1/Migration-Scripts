#!/bin/bash

set -e
set -x
set -u

GIT_BASE_URL='https://github.com/Perumal-test1'
GIT_SOURCE_ORG='Perumal-test1'
GIT_TARGET_ORG='test-demo-2'

#set as env instead
TOKEN=111111111
request='{"organization": "'$GIT_TARGET_ORG'"}'

while read repo; do
curl -s -X "POST" -H "Authorization: token $TOKEN" "${GIT_BASE_URL}/api/v3/repos/${GIT_SOURCE_ORG}/${repo}/forks" -d "$request"
done< repos.csv
