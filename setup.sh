#!/usr/bin/env bash

if ! [ -x "$(command -v jq)" ]; then
	echo "Installing 'jq' via Homebrew..."
	brew update --verbose && brew install jq
fi

jq -s add package.json .dev/lib/package.json > temp.json
mv -f temp.json package.json

ln -sfv .dev/lib/gitignore .gitignore
ln -sfv .dev/lib/Gruntfile.js Gruntfile.js
ln -sfv .dev/lib/phpunit.xml.dist phpunit.xml.dist

cp -n .dev/lib/coveralls.yml .coveralls.yml
cp -n .dev/lib/travis.yml .travis.yml

npm install
grunt merge_yaml
