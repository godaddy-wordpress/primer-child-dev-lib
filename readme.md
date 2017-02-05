# Primer Child Theme Development Library

Common tools to facilitate the development and testing of Primer child themes.

## Installing

Add this repo to your child theme as a submodule:

```sh
$ git submodule add -b master https://github.com/godaddy/wp-primer-child-dev-lib.git .dev/lib
```

Create required symlinks in the theme root:

```sh
$ ln -s .dev/lib/bin/gitignore .gitignore
$ ln -s .dev/lib/bin/package.json package.json
$ ln -s .dev/lib/bin/Gruntfile.js Gruntfile.js
```

## Updating

Simply update the submodule in your theme repo to get the latest changes:

```sh
$ git submodule update --remote .dev/lib
$ git add .dev/lib
$ git commit -m "Update dev-lib"
```

## Grunt Commands

### `$ grunt`

 * `sass`
 * `autoprefixer`
 * `cssjanus`
 * `cssmin`
 * `jshint`
 * `uglify`
 * `imagemin`

### `$ grunt readme`

 * `wp_readme_to_markdown`

### `$ grunt build`

 * `default`
 * `version`
 * `clean:build`
 * `copy:build`

### `$ grunt version`

 * `replace`
 * `readme`

### `$ grunt watch`

 * `sass`
 * `autoprefixer`
 * `cssjanus`
 * `cssmin`
 * `imagemin`
 * `jshint`
 * `uglify`

## Grunt Tasks

### `autoprefixer`

```
.dev/sass/style.scss        -> style.css
.dev/sass/editor-style.scss -> editor-style.css
```

### `clean:build`

```
build/*
```

### `copy:build`

```
*.css          -> build/*.css
*.php          -> build/*.php
*.txt          -> build/*.txt
screenshot.png -> build/screenshot.png
assets/**      -> build/assets/**
inc/**         -> build/inc/**
templates/**   -> build/templates/**
```

### `cssjanus:main`

```
style.css        -> style-rtl.css
editor-style.css -> editor-style-rtl.css
```

### `cssjanus:assets`

```
assets/css/**/*.css -> assets/css/**/*-rtl.css
```

### `cssmin:assets`

```
assets/css/**/*.css -> assets/css/**/*.min.css
```

### `jshint:gruntfile`

```
Gruntfile.js
```

### `jshint:assets`

```
assets/js/**/*.js
```

### `imagemin:screenshot`

```
screenshot.png
```

### `imagemin:assets`

```
assets/images/**/*.{gif,jpeg,jpg,png,svg}
```

### `imagemin:wp`

```
wp_org_assets/**/*.{gif,jpeg,jpg,png,svg}
```

### `replace:php`

```
*.php
inc/**/*.php
templates/**/*.php
```

### `replace:readme`

```
readme.txt
```

### `replace:sass`

```
.dev/sass/**/*.scss
```

### `sass`

```
.dev/sass/style.scss        -> style.css
.dev/sass/editor-style.scss -> editor-style.css
.dev/sass/assets/**/*.scss  -> assets/**/*.css
```

### `uglify`

```
assets/js/**/*.js
```

### `wp_readme_to_markdown`

```
readme.txt -> readme.md
```

## Extras

Activate optional extras by symlinking the ready-made configs in your theme root.

### PHPUnit

```sh
$ ln -s .dev/lib/bin/phpunit.xml.dist phpunit.xml.dist
```

### Travis CI

```sh
$ ln -s .dev/lib/bin/travis.yml .travis.yml
```

**Build Matrix**

| Job    | PHP    | WordPress    |
| ------ | ------ | ------------ |
| #1     | 5.3    | 4.4          |
| #2     | 5.3    | Stable       |
| #3     | 5.3    | Trunk        |
| #4     | 7.1    | Stable       |
| #5     | 7.1    | Trunk        |

### Coveralls

```sh
$ ln -s .dev/lib/bin/coveralls.yml .coveralls.yml
```
