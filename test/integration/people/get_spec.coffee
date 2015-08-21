config = require './config'
frisby = require 'frisby'

expectResult =
  data : [  ]
  statusCode : 200

frisby.create 'Create people'
    .get config.api, {strictSSL: false}
    .addHeader 'Content-Type', 'application/json'
    .expectStatus config.SUCCESS_STATUS_CODE
    .afterJSON (jsonResponse) ->
      expect(jsonResponse).toEqual expectResult
.toss()
