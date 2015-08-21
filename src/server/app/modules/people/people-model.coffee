peopleSchema = require './people-schema'

module.exports = (mongoose) ->
  modelName = 'People'
  mongoose.model modelName, peopleSchema(mongoose)
  modelName
