# Node modules
path     = require 'path'
log4js = require 'log4js'

# Log4js configuration
configPath = path.normalize "#{__dirname}../../../../"
config =
  reloadSecs: 300
  cwd: configPath
log4js.configure "#{configPath}config/logger/log4.json", config
log4 = log4js.getLogger 'App'

# Constants
LOGS_TYPE =
	INFO: 'info'
	DEBUG: 'debug'
	WARN: 'warn'
	ERROR: 'error'

class Logger
  ###
  It is a wrapper of 'logger.info' method.
  ###
  @info: ->
    @_writeMessage arguments, LOGS_TYPE.INFO

  ###
  It is a wrapper of 'logger.debug' method.
  ###
  @debug: ->
    @_writeMessage arguments, LOGS_TYPE.DEBUG

  ###
  It is a wrapper of 'logger.warn' method.
  ###
  @warn: ->
    @_writeMessage arguments, LOGS_TYPE.WARN

  ###
  It is a wrapper of 'logger.error' method.
  ###
  @error: ->
    params = []
    for value in arguments
      if value instanceof Error
        console.log JSON.stringify(value), value
      else
        params.push value
    message = params.join ' '
    log4[LOGS_TYPE.ERROR] message

  ###
  Whites the log on the file and emit a log event.
  @param args [Array] method arguments.
  @param logType [String] log key.
  ###
  @_writeMessage: (args, logType) ->
    params = [].slice.call args
    message = params.join ' '
    log4[logType] message

module.exports = Logger
