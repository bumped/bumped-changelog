'use strict'

fs           = require 'fs'
objectAssign = require 'object-assign'
changelog    = require 'conventional-changelog'

defaultOptions =
  releaseCount: 0
  overwrite: true
  filename: 'CHANGELOG.md'

module.exports = (bumped, plugin, cb) ->

  options = objectAssign defaultOptions, plugin.options
  outStream = fs.createWriteStream options.filename

  delete options.filename
  changelogStream = changelog options
  changelogStream.pipe outStream

  changelogStream.on 'error', cb
  changelogStream.on 'end', cb
