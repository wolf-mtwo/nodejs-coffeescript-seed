###
  Nodemon
  Run nodemon as a grunt task for easy configuration and integration with the rest of your workflow
###

module.exports =
  options:
    delay: 1500
    watch: ['build/src/server/**/*.js']
    ignore: [
      'node_modules/**'
      'grunt_task/**'
      'src/**'
      'test/**'
      'coverage/**'
    ]

  dev:
    options:
      nodeArgs: ['--debug']
      env:
        PORT: '5455'
    script: 'build/src/server/index.js'
    # cwd: __dirname
