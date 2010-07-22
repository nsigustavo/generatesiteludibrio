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


rm -rf ludibrio/docs
mkdir ludibrio/docs
cp -rf build/html/* ludibrio/docs

rm -rf ludibrio/static
mkdir ludibrio/static
cp -rf build/html/* ludibriar/static



if [ ! -d google_appengine ]; then
    wget http://googleappengine.googlecode.com/files/google_appengine_1.3.5.zip;
    unzip  google_appengine_1.3.5.zip;
    rm google_appengine_1.3.5.zip;
fi

