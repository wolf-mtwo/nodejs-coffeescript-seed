q = require 'q'
class PeopleManager

  constructor: (utilities, modelName, mongoose) ->
    @errorHandler = utilities.errorHandler
    @successHandler = utilities.successHandler
    @model = mongoose.model modelName

  getAll: ->
    deferred = q.defer()
    # console.log 'holaaaaaaaaaaaaaaaaaaaaa'
    @model.find {}, (error, listPeople) =>
      @_response error, listPeople, deferred
    deferred.promise

  _response: (error, response, promise) ->
    if error?
      dbError = @errorHandler.DB_EXCEPTION error
      promise.reject dbError
    else
      dbResponse = @successHandler.ok response
      promise.resolve dbResponse

module.exports = PeopleManager
