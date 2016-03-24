# bumped-changelog

<h1 align="center">
  <br>
  <img src="http://i.imgur.com/DmMbFwL.png" alt="bumped">
  <br>
  <br>
</h1>

![Last version](https://img.shields.io/github/tag/Bumped/bumped-changelog.svg?style=flat-square)
[![Build Status](http://img.shields.io/travis/Bumped/bumped-changelog/master.svg?style=flat-square)](https://travis-ci.org/Bumped/bumped-changelog)
[![Dependency status](http://img.shields.io/david/Bumped/bumped-changelog.svg?style=flat-square)](https://david-dm.org/Bumped/bumped-changelog)
[![Dev Dependencies Status](http://img.shields.io/david/dev/Bumped/bumped-changelog.svg?style=flat-square)](https://david-dm.org/Bumped/bumped-changelog#info=devDependencies)
[![NPM Status](http://img.shields.io/npm/dm/bumped-changelog.svg?style=flat-square)](https://www.npmjs.org/package/bumped-changelog)
[![Donate](https://img.shields.io/badge/donate-paypal-blue.svg?style=flat-square)](https://paypal.me/kikobeats)

> Auto generates a changelog file in each bump.

## Install

You don't need to install it! Bumped automatically resolve the plugins dependencies. However if you still want to do so must be globally accessible:

```bash
npm install bumped-changelog -g
```

## Usage

The plugin is based in the [conventional-changelog](https://github.com/ajoslin/conventional-changelog) library.

At the first time, if changelog file is not detected, then we create a changelog file with all the tag detected.

Under incremental tags, we append the last tag into the file.

Notes that at this points changelog looks like an auto generate commit historial: Write a good changelog consist in put human effor in describe what happens in each release!

## Configuration

Declare a plugin step in your `.bumpedrc` like:

```CSON
plugins:
  postrelease:
    'Generating CHANGELOG file':
      plugin: 'bumped-changelog'
      options:
        preset: 'angular'
        filename: 'CHANGELOG.md'
```

## Options

### preset

Type: `String`
Default: `angular`

### filename

Type: `String`
Default: `CHANGELOG.md`


## License

MIT © [Bumped]()
