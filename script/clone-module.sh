#!/usr/bin/env bash

if [ ! -d "../$1" ]
then
  cd .. && \
  BASE='git@github.com:moar-stuff' && \
  git clone --shallow-exclude=$2 --branch develop "$BASE/moar-$1.git" $1 && \
  cd $1 && \
  git reset --hard $3
  npm install
fi