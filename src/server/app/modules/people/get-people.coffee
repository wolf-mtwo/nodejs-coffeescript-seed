config = require './api-config'

module.exports = (logger, expressRoutes, peopleManager) ->
  expressRoutes.route(config.uri).get (req, res, next) ->
    logger.info '[ModulePeople]', '[GetAllPeople]', 'Geting all people start'
    peopleManager.getAll()
    .then (successRespone) ->
      logger.info '[ModulePeople]', '[GetAllPeople]', 'Geting all people success'
      res.json successRespone
    .fail (errorResponse) ->
      logger.info '[ModulePeople]', '[GetAllPeople]', 'Geting all people fail'
      res.json errorResponse
