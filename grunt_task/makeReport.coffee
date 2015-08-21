###
configuration object for the report task about code coverage.
###
module.exports =
  src: "coverage/reports/**/*.json"
  options:
    type: "<%= grunt.task.current.args[0] %>"
    dir: "coverage/reports"
    print: "detail"
