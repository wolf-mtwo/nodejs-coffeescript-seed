module.exports =

  dev: [
    'build'
    'concurrent:start_app'
  ]

  unit_test: [
    'build'
    'copy:instrument'
    'instrument'
    'mochaTest'
  ]

  build: [
    # 'coffeelint'
    'clean:build'
    'coffee:server'
    # 'coffee:test'
    'copy:server'
  ]

  coverage: [
    'clean:coverage'
    'unit_test'
    "storeCoverage"
    "makeReport:cobertura"
  ]

  integration_test: [
    'jasmine_node'
  ]
