# Primer Child Theme Development Library

**Common tools to facilitate the development and testing of Primer child themes.**

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

| Job    | PHP    | WordPress    |
| ------ | ------ | ------------ |
| #1     | 5.3    | 4.4          |
| #2     | 5.3    | Stable       |
| #3     | 5.3    | Trunk        |
| #4     | 7.1    | Stable       |
| #5     | 7.1    | Trunk        |

### Coveralls

```sh
ln -s .dev/lib/bin/coveralls.yml .coveralls.yml
```
