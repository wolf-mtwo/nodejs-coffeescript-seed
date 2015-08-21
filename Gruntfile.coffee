module.exports = (grunt) ->

  gruntLoader = require 'load-grunt-config'

  path = require 'path'

  gruntLoader grunt,

    configPath: path.join process.cwd(), 'grunt_task'

    loadGruntTasks:
      config: require './package.json'
      scope: 'devDependencies'
