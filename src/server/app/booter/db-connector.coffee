
class DbConnector

	constructor: (@mongoose) ->
		
	connect: (dbConfiguration) ->
		# @TODO validate config
    dbUser = dbConfiguration.user
    dbPwd  = dbConfiguration.pwd
    dbHost = dbConfiguration.host
    dbPort = dbConfiguration.port
    dbName = dbConfiguration.name
    dbURL = "mongodb://#{dbHost}:#{dbPort}/#{dbName}"
    @db = @mongoose.connect dbURL

	disconnect: ->
		@mongoose.disconnect()

class DbConnectorSingleton
	instance = undefined
	@getInstance: (mongoose) ->
		instance ?= new DbConnector mongoose

module.exports = DbConnectorSingleton
