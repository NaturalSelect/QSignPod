#!/bin/bash

CODEBASE="https://github.com/NaturalSelect/QSignPod"
BRANCH="v1.1.9-codebase"

git clone ${CODEBASE} -b ${BRANCH} unidbg-fetch-qsign

pushd unidbg-fetch-qsign
gradle build
popd