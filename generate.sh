#!/bin/bash

if [[ -d ludibrio ]]; then
    cd ludibrio
    git pull origin ludibrio3.0
    cd ..
else
    git clone git@github.com:nsigustavo/ludibrio.git
fi


make clean
make html

cp -rf build/html/* ludibrio/docs




if [ -d google_appengine]; then else
    wget http://googleappengine.googlecode.com/files/google_appengine_1.3.5.zip
    unzip  google_appengine_1.3.5.zip
    rm google_appengine_1.3.5.zip
fi


