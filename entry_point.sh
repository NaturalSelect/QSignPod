#!/bin/bash

if [ -z "${BASE_PATH}"]
then
    BASE_PATH="/app/txlib/8.9.63"
fi

java -jar unidbg-fetch-qsign-all.jar --basePath="${BASE_PATH}"