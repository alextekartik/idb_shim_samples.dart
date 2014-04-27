#!/bin/bash

pushd $(dirname $BASH_SOURCE)/..
rm -rf deploy
pub build
mv build deploy