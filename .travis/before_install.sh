#!/bin/bash

if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    rm /usr/local/include/c++
    brew update
fi
