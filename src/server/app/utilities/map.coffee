#constant
UNDEFINED_ERROR = new Error 'The key is null or undefined'
NOT_STRING_ERROR = new Error 'The key is not a string'
NO_EXIST_ERROR  = new Error 'The key value not exist'
EXIST_ERROR  = new Error 'The key value exist'

###
A key-value pair map collection.
###
class Map

  ###
  Instanciates a Map object.
  ###
  constructor: ->
    @data = []
    @indexes = {}

  ###
  Adds a key-value in map.
  @param key [String] a value's key.
  @param value [Object] the value that will save.
  ###
  add: (key, value) ->
    if key?
      if typeof key is 'string'
        if @indexes[key]?
          throw EXIST_ERRO
        else
          index = @data.length
          @data[index] = value
          @indexes[key] = index
      else
        throw NOT_STRING_ERROR
    else
      throw UNDEFINED_ERROR

  ###
  Gets the value for the specified key.
  @param key [String] a value's key for which to get the value.
  ###
  get: (key) ->
    if key?
      if typeof key is 'string'
        if @indexes[key]?
          index = @indexes[key]
          return @data[index]
        else
          return null
      else
        throw NOT_STRING_ERROR
    else
      throw UNDEFINED_ERROR


  ###
  Removes a value specified.
  @param key [String] a value's key that will remove.
  ###
  remove: (key) ->
    if key?
      if typeof key is 'string'
        if @indexes[key]?
          index = @indexes[key]
          @data.splice index, 1
          delete @indexes[key]
          return
        else
          throw NO_EXIST_ERROR
      else
        throw NOT_STRING_ERROR
    else
      throw UNDEFINED_ERROR

  ###
  Clears the contents of the map.
  @return [Undefined]
  ###
  clear: ->
    @data = []
    @indexes = {}
    return

  ###
  Verifies if the map is empty.
  @return [Boolean] true if map is empty; otherwise, false.
  ###
  isEmpty: ->
    @data.length > 0

  ###
  Iterates on all map elements
  @param callback [Function<Object>] callback function with a map element.
  ###
  forEach: (callback) ->
    callback element for element in @data


module.exports = Map
