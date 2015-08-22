###
  Nodemon
  Run nodemon as a grunt task for easy configuration and integration with the rest of your workflow
###
module.exports =
  dev:
    options:
      delay: 500
      nodeArgs: ['--debug']
      cwd: __dirname + '/../'
      watch: ['src']
      ext: 'js,coffee'
      env:
        PORT: '5455'
    script: 'build/src/server/index.js'
