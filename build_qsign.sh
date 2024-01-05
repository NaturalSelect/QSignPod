#!/bin/bash

CODEBASE="https://github.com/XZhouQD/unidbg-fetch-qsign"
BRANCH="master"

git clone ${CODEBASE} -b ${BRANCH}

pushd unidbg-fetch-qsign
gradle build
popd