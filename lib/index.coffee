'use strict'

fs           = require 'fs'
changelog    = require 'conventional-changelog'

options =
  releaseCount: 0
  overwrite: true

module.exports = (bumped, plugin, cb) ->

  cb 'not package.json found' unless bumped.config.hasFile 'package.json'

  outStream = fs.createWriteStream 'CHANGELOG.md'
  changelogStream = changelog options
  changelogStream.pipe outStream

  changelogStream.on 'error', cb
  changelogStream.on 'end', cb

