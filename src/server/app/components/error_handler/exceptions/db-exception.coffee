
class DbException extends Error

	constructor: (error, statusCodes) ->
		name = 'DB_EXCEPTION'
		# statusCode = statusCode
		# errorMessage = error.message
		# stack = @_buildStackTrace error.stack

	_buildStackTrace: (stack) ->
		#@TODO implemet stack as object
		stack

module.exports = DbException
