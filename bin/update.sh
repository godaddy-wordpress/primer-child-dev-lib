#!/usr/bin/env bash

git submodule update --remote .dev/lib
git add -v .dev/lib
git commit -vm "Update theme dev-lib"
git push -v
