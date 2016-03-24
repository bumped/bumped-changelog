'use strict'

path         = require 'path'
existsFile   = require 'exists-file'
objectAssign = require 'object-assign'
spawn        = require('child_process').spawn

defaultOptions =
  preset: 'angular'
  filename: 'CHANGELOG.md'

parseOptions = (opts) ->
  Object.keys(opts).map (opt) ->
    value = opts[opt]
    if value?
      console.log
      flagValue = if typeof value is 'boolean' then '' else "=#{opts[opt]}"
      "--#{opt}#{flagValue}"

module.exports = (bumped, plugin, cb) ->
  changelog = path.resolve plugin.path, 'node_modules/.bin/conventional-changelog'
  opts = objectAssign defaultOptions, plugin.options
  isFirstTime = !existsFile opts.filename

  opts.infile = opts.filename
  delete opts.filename
  opts['same-file'] = true

  if isFirstTime
    opts['release-count'] = 0

  flags = parseOptions opts
  ps = spawn(changelog, flags, stdio: 'inherit')
  ps.on 'exit', cb
