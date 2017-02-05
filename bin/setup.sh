#!/usr/bin/env bash

ln -isv .dev/lib/bin/coveralls.yml .coveralls.yml
ln -isv .dev/lib/bin/gitignore .gitignore
ln -isv .dev/lib/bin/Gruntfile.js Gruntfile.js
ln -isv .dev/lib/bin/package.json package.json
ln -isv .dev/lib/bin/phpunit.xml.dist phpunit.xml.dist
ln -isv .dev/lib/bin/travis.yml .travis.yml

cp -iv .dev/lib/bin/project-sample.json project.json
