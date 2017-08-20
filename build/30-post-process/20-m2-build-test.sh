#!/bin/bash

### 20-m1-build-test.sh: checks to ensure the build was successful.

logvalue "Checking if " ${BUILD_DIR}"/pub/static/frontend/*/${THEME}/*/css/*.css exists."

if [ ! -f ${BUILD_DIR}"/pub/static/frontend/*/${THEME}/*/css/*.css" ]; then
    printf "No CSS files present for theme. Please investigate." 1>&2
    printf "BUILD ERROR" 1>&2
    exit 20
fi