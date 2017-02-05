#!/usr/bin/env bash

git submodule update --remote .dev/lib
git add .dev/lib
git commit -m "Update theme dev-lib"
git push
