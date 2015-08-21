
class OpenServerException extends Error

	constructor: (error, statusCodes) ->
		name = 'OPEN_SERVER_EXCEPTION'
		# statusCode = statusCode
		# message = error.message
		# stack = @_buildStackTrace error.stack

	_buildStackTrace: (stack) ->
		#@TODO implemet stack as object
		stack

module.exports = OpenServerException
