'use strict'

fs        = require 'fs'
changelog = require 'conventional-changelog'

options =
  releaseCount: 0
  overwrite: true

module.exports = (bumped, plugin, cb) ->
  filename = plugin.options.filename or 'CHANGELOG.md'
  outStream = fs.createWriteStream filename
  changelogStream = changelog options
  changelogStream.pipe outStream
  changelogStream.on 'error', cb
  changelogStream.on 'end', cb

