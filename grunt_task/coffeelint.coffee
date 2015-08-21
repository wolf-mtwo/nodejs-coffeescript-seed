###
  CoffeeLint
  Lint your CoffeeScript.
###

module.exports =

  options:
    configFile: "coffeelint.json"

  server:
    files: [{src: 'src/server/**/*.coffee'}]

  test:
    files: [{src: 'test/**/*.coffee'}]
