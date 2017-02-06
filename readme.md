# Primer Child Theme Development Library

Common tools to facilitate the development and testing of Primer child themes.

## Installing

From your project root, add this repo as a submodule and run the `setup.sh` script:

```sh
git submodule add -b master https://github.com/godaddy/wp-primer-child-dev-lib.git .dev/lib
bash .dev/lib/setup.sh
```

## Updating

From your project root, run the `update.sh` script:

```sh
bash .dev/lib/update.sh
```

## Grunt Tasks & Targets

Run all the targets in a task: `grunt imagemin`

Or a specific target in a task: `grunt imagemin:screenshot`

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

## Travis CI Builds

| Job    | PHP    | PHPUnit    | WordPress    | Multisite    |
| :----- | :----- | :--------- | :----------- | :----------- |
| #1     | 5.3    | 4.8.x      | 4.4          | No           |
| #2     | 5.3    | 4.8.x      | Latest       | No           |
| #3     | 5.3    | 4.8.x      | Trunk        | No           |
| #4     | 7.1    | 6.0.x      | Latest       | No           |
| #5     | 7.1    | 6.0.x      | Trunk        | No           |
