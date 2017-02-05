# Primer Child Theme Development Library

Common tools to facilitate the development and testing of Primer child themes.

## Installing

Add this repo to your child theme as a submodule:

```sh
git submodule add -b master https://github.com/godaddy/wp-primer-child-dev-lib.git .dev/lib
```

Create required symlinks in the theme root:

```sh
ln -s .dev/lib/bin/gitignore .gitignore
ln -s .dev/lib/bin/package.json package.json
ln -s .dev/lib/bin/Gruntfile.js Gruntfile.js
```

## Updating

Simply update the submodule in your theme repo to get the latest changes:

```sh
git submodule update --remote .dev/lib
git add .dev/lib
git commit -m "Update dev-lib"
```

## Grunt Task Targets

Run a specific target in a task: `grunt imagemin:screenshot`

Or all the targets: `grunt imagemin`

```
autoprefixer
 |-- :editor
 |-- :main
clean
 |-- :build
copy
 |-- :build
cssjanus
 |-- :assets
 |-- :editor
 |-- :main
cssmin
 |-- :assets
jshint
 |-- :assets
 |-- :gruntfile
imagemin
 |-- :assets
 |-- :screenshot
 |-- :wp_org
replace
 |-- :php
 |-- :readme
 |-- :sass
sass
 |-- :assets
 |-- :editor
 |-- :main
uglify
 |-- :assets
watch
 |-- :images
 |-- :js
 |-- :sass
wp_readme_to_markdown
```

## Grunt Task Groups

Run an ordered group of tasks with one command: `grunt build`

```
default
 |-- sass
 |-- autoprefixer
 |-- cssjanus
 |-- cssmin
 |-- jshint
 |-- imagemin
build
 |-- default
 |-- version
 |-- clean:build
 |-- copy:build
readme
 |-- wp_readme_to_markdown
version
 |-- replace
 |-- readme
```

## Extras

Activate optional extras by symlinking the ready-made configs in your theme root.

### PHPUnit

```sh
ln -s .dev/lib/bin/phpunit.xml.dist phpunit.xml.dist
```

### Travis CI

```sh
ln -s .dev/lib/bin/travis.yml .travis.yml
```

**Build Matrix**

| Job    | PHP    | PHPUnit    | WordPress    | Multisite    |
| :----- | :----- | :--------- | :----------- | :----------- |
| #1     | 5.3    | 4.8.x      | 4.4          | No           |
| #2     | 5.3    | 4.8.x      | Stable       | No           |
| #3     | 5.3    | 4.8.x      | Trunk        | No           |
| #4     | 7.1    | 6.0.x      | Stable       | No           |
| #5     | 7.1    | 6.0.x      | Trunk        | No           |

### Coveralls

```sh
ln -s .dev/lib/bin/coveralls.yml .coveralls.yml
```
