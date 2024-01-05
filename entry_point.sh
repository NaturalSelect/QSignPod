#!/bin/bash

if [ -z "${BASE_PATH}"]
then
    BASE_PATH=""
fi

java -jar unidbg-fetch-qsign-all.jar --basePath="${BASE_PATH}"