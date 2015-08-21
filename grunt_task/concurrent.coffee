###
  Concurrent
  Run grunt tasks concurrently
###

module.exports =

  options:
    logConcurrentOutput: true

  server_preprocessors: [
    'coffee:server'
  ]

  start_app: [
    'watch'
    'nodemon:dev'
  ]

  # test_preprocessors: [
  #   'coffee:test'
  # ]
