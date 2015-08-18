# bumped-changelog


![Last version](https://img.shields.io/github/tag/Bumped/bumped-changelog.svg?style=flat-square)
[![Build Status](http://img.shields.io/travis/Bumped/bumped-changelog/master.svg?style=flat-square)](https://travis-ci.org/Bumped/bumped-changelog)
[![Dependency status](http://img.shields.io/david/Bumped/bumped-changelog.svg?style=flat-square)](https://david-dm.org/Bumped/bumped-changelog)
[![Dev Dependencies Status](http://img.shields.io/david/dev/Bumped/bumped-changelog.svg?style=flat-square)](https://david-dm.org/Bumped/bumped-changelog#info=devDependencies)
[![NPM Status](http://img.shields.io/npm/dm/bumped-changelog.svg?style=flat-square)](https://www.npmjs.org/package/bumped-changelog)
[![Gratipay](https://img.shields.io/gratipay/Kikobeats.svg?style=flat-square)](https://gratipay.com/~Kikobeats/)

> Auto generates a changelog file in each bump.

## Install

You don't need to install it! Bumped automatically resolve the plugins dependencies. However if you still want to do so must be globally accessible:

```bash
npm install bumped-changelog -g
```

## Configuration

The plugin is based in the [conventional-changelog](https://github.com/ajoslin/conventional-changelog) library. Basically the plugin expose a interface for setup the library in the `.bumpedrc`:

Just define the a minimal scaffold as the next piece of code:

```CSON
files: [
  "package.json"
  "bower.json"
]

plugins:
  postrelease:
    'Generating CHANGELOG file':
      plugin: 'bumped-changelog'
      options:
        filename: 'CHANGELOG.md' # Optionally
```

## License

MIT © [Bumped]()
