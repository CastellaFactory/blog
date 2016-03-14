#!/bin/bash

rm -rf public

git submodule add -b master git@github.com:CastellaFactory/CastellaFactory.github.io.git public
