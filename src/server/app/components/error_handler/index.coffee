StatusCodes = require '../../utilities/status-codes'
OpenServerException = require './exceptions/open-server-exception'
LoadModuleException = require './exceptions/load-modules-exception'
DbException = require './exceptions/db-exception'

module.exports =
	OPEN_SERVER_EXCEPTION: (error) ->
		new OpenServerException error, StatusCodes
	LOAD_MODULE_EXCEPTION: (error) ->
		new LoadModuleException error, StatusCodes
	DB_EXCEPTION: (error) ->
		new DbException error, StatusCodes
