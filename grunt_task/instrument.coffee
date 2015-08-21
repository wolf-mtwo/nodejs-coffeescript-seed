###
configuration object  for the code instrumentation task.
###
module.exports =
  files: ["build/src/server/**/*.js"]
  options:
    lazy: true
    basePath: "coverage/instrument/"
