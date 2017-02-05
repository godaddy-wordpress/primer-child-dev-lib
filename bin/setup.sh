#!/usr/bin/env bash

ln -is .dev/lib/bin/coveralls.yml .coveralls.yml
ln -is .dev/lib/bin/gitignore .gitignore
ln -is .dev/lib/bin/Gruntfile.js Gruntfile.js
ln -is .dev/lib/bin/package.json package.json
ln -is .dev/lib/bin/phpunit.xml.dist phpunit.xml.dist
ln -is .dev/lib/bin/travis.yml .travis.yml

cp -i .dev/lib/bin/project-sample.json project.json
