module.exports =
  options:
    forceExit: true
    match: '.'
    matchall: false
    extensions: 'js'
    specNameMatcher: 'spec'
    includeStackTrace: false
    jUnit:
      report: true,
      savePath : __dirname
      useDotNotation: true
      consolidateAll: true
  all: [
    'build/test/integration/people'
  ]
