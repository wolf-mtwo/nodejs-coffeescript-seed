module.exports = (mongoose) ->
  # Defines properties.
  properties =
    name:
      type: String
      required: true
    ci:
      type: String
      required: true
  #created Schema
  PopleSchema = new mongoose.Schema properties
