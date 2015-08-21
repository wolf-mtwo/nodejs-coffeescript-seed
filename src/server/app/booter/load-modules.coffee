path = require 'path'
fs = require 'fs'

module.exports = (components, routes, mongoose) ->
	errorHandler = components.errorHandler
	logger = components.logger
	modulesDirectory = components.cfg.directory_modules
	modulesPath = path.resolve __dirname, "../", modulesDirectory
	files = fs.readdirSync modulesPath
	files.forEach (file) ->
		logger.info '[LoadModules]', '[load]', 'loanding modules'
		try
			pathFile = "#{modulesPath}/#{file}"
			appModule = require pathFile
			appModule(components, routes, mongoose)
		catch error
			console.log error
			# logger.error '[LoadModules]', '[load]', errorHandler.LOAD_MODULE_EXCEPTION error
