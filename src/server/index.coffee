#node modules
https = require 'https'
fs = require 'fs'

# main module entry point
app = require './app'

#load privatekey and cetificate
credentials =
	key: fs.readFileSync "#{__dirname}/sslcertificate/server.key", 'utf8'
	cert: fs.readFileSync "#{__dirname}/sslcertificate/server.crt", 'utf8'

#define port for server
port =  app.locals.cfg.server_port

#create https server
httpsServer = https.createServer credentials, app

# app components
errorHandler = app.locals.errors
successHandler = app.locals.success
logger = app.locals.logger

#Start server listening
httpsServer.listen port

# handle server listen errors
httpsServer.on 'error', (error) ->
	logger.error errorHandler.OPEN_SERVER_EXCEPTION error
	process.exit 1

# handle server listening
httpsServer.on 'listening', ->
	logger.info '[ServerInitation]', '[createServer]', "server listening on port: #{port}"
