###
  Watch
  Run predefined tasks whenever watched file patterns are added, changed or deleted.
###

module.exports =

  coffee_server:
    files: ['src/server/**/*.coffee']
    tasks: ['newer:coffee:server']
    # tasks: ['newer:coffeelint:server', 'newer:coffee:server']

  # coffee_test:
  #   files: ['test/**/*.coffee']
  #   tasks: ['newer:coffee:test']
    # tasks: ['newer:coffeelint:test', 'newer:coffee:test']

  copy:
    files: [ 'src/server/**', '!src/**/*.coffee']
    tasks: [ 'newer:copy:server']
