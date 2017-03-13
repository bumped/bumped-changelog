'use strict'

spawn      = require('child_process').spawn
defaults   = require 'lodash.defaults'
existsFile = require 'exists-file'
path       = require 'path'
fs         = require 'fs'

conventionalChangelog = 'node_modules/.bin/conventional-changelog'

DEFAULT =
  filename: 'CHANGELOG.md'

parseOptions = (opts) ->
  Object.keys(opts).map (opt) ->
    value = opts[opt]
    if value?
      flagValue = if typeof value is 'boolean' then '' else "=#{opts[opt]}"
      "--#{opt}#{flagValue}"

module.exports = (bumped, plugin, cb) ->
  changelog = path.resolve plugin.path, conventionalChangelog
  changelog = fs.realpath changelog
  opts = defaults {}, plugin.opts.options, DEFAULT
  isFirstTime = !existsFile.sync opts.filename

  opts.infile = opts.filename
  delete opts.filename
  opts['same-file'] = true

  if isFirstTime
    opts['release-count'] = 0

  flags = parseOptions opts
  ps = spawn(changelog, flags, stdio: 'inherit')
  ps.on 'exit', cb
