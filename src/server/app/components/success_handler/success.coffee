class SuccessHandler

  @ok: (data) ->
    response =
      data:data
      statusCode: 200

module.exports = SuccessHandler
