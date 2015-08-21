getPeople = require './get-people'

PeopleManager = require './people-manager'
loadPeopleModel = require './people-model'

module.exports = (utilities, expressRoutes, mongoose) ->
  modelName = loadPeopleModel mongoose
  peopleManager = new PeopleManager utilities, modelName, mongoose
  logger = utilities.logger
  getPeople logger, expressRoutes, peopleManager
