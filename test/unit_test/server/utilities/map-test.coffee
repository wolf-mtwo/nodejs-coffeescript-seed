# Node modules
assert = require 'assert'
should = require 'should'
# Own modules
config = require './config'
mapPath = "#{config.path}map"
Map = require mapPath

describe 'Functionality of the Map class', ->
  map = new Map()

  describe 'add function', ->
    it 'Should throw an error because the key and value is empty', ->
      assert.throws ->
        map.add()
      , Error

    it 'Should throw an error when adds a null value as object key', ->
      assert.throws ->
        map.add null
      , Error

    it 'Should throw an error because the key is not a string', ->
      assert.throws ->
        map.add 1235
      , Error

    it 'Should add a new object on the map but the value is undefined', ->
      map.add 'zero'
      should.equal map.data.length, 1

    it 'Should throw an error because the key ready exist', ->
      assert.throws ->
        map.add 'zero', undefined
      , Error

    it 'Should add a new object on the map', ->
      map.add 'one', {name:'lorem'}
      should.equal map.data.length, 2

  describe 'get function', ->

    it 'Should throw an error because the key is not a string', ->
      assert.throws ->
        map.get 1235
      , Error

    it 'Should throw an error because the key and value is empty', ->
      assert.throws ->
        map.get()
      , Error

    it 'Should throw an error when get a null value as object key', ->
      assert.throws ->
        map.get null
      , Error

    it 'Should return a null value when key has not added an object', ->
      response = map.get 'dos'
      should.equal response, null

    it 'Should return a object', ->
      response = map.get 'one'
      should.deepEqual response, {name:'lorem'}

  describe 'remove function', ->

    it 'Should throw an error because the key is not a string', ->
      assert.throws ->
        map.remove {}
      , Error

    it 'Should throw an error because the key and value is empty', ->
      assert.throws ->
        map.remove()
      , Error

    it 'Should throw an error when remove a undefined value as object key', ->
      assert.throws ->
        map.remove undefined
      , Error

    it 'Should throw an error because the key not exists', ->
      assert.throws ->
        map.remove 'pepe'
      , Error

    it 'Should remove correctly an object', ->
      map.remove 'one'
      should.equal (map.get 'one'), null

  describe 'clear function', ->
    it 'Should leave empty the Map class', ->
      map.clear()
      should.deepEqual map.data, []
      should.deepEqual map.indexes, {}

  describe 'forEach function', ->
    it 'Should iterate on all Map elements', (done) ->
      map.add 'four', {index: 1}
      map.add 'five', {index: 2}
      map.add 'six', {index: 3}
      count = 0
      map.forEach (data) ->
        count++
        if count is 3
          done()
