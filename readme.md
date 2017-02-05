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

| Task           | Targets |
| -------------- | ------- |
| `sass`         | `.dev/sass/editor-style.scss -> editor-style.css`<br>`.dev/sass/style.scss -> style.css`<br>`.dev/sass/assets/**/*.scss -> assets/**/*.css` |
| `autoprefixer` | `style.css`<br>`editor-style.css` |
| `cssjanus`     | `style.css -> style-rtl.css`<br>`editor-style-rtl.css`<br>`assets/css/**/*.css -> assets/css/**/*-rtl.css` |
| `cssmin`       | `assets/css/**/*.css -> assets/css/**/*.min.css` |
| `jshint`       | `Gruntfile.js`<br>`assets/js/**/*.js` |
| `uglify`       | `assets/js/**/*.js` |
| `imagemin`     | `assets/images/**/*.{gif,jpeg,jpg,png,svg}` |

### `$ grunt readme`

| Task                    | Targets                   |
| ----------------------- | ------------------------- |
| `wp_readme_to_markdown` | `readme.txt -> readme.md` |

### `$ grunt build`

| Task      | Targets |
| --------- | ------- |
| `default` |         |
| `version` |         |
| `clean`   | ```style.css -> style-rtl.css
editor-style-rtl.css
assets/css/**/*.css -> assets/css/**/*-rtl.css
``` |
| `copy`    | `*.css -> build/*.css`<br>`*.php -> build/*.php`<br>`*.txt -> build/*.txt`<br>`screenshot.png -> build/screenshot.png`<br>`assets/** -> build/assets/**`<br>`inc/** -> build/inc/**`<br>`templates/** -> build/templates/**` |

### `$ grunt version`

| Task      | Targets |
| --------- | ------- |
| `replace` | `*.php`<br>`inc/**/*.php`<br>`templates/**/*.php`<br>`.dev/sass/**/*.scss`<br>`readme.txt` |
| `readme`  |         |

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
