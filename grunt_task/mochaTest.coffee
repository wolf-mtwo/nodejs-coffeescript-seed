###
configuration object for the task that will run unit testing.
###
module.exports =
    options:
      globals: 'hasCert,res'
      # reporter: 'spec'
      reporter: 'xunit-file'
      colors: true
      timeout: 4000
      require: [
        'coffee-script'
        'should'
      ]
    src: [
      'test/unit_test/server/**/*.coffee'
    ]
