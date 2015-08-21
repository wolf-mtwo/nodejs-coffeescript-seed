###
  Coffee
  Compile CoffeeScript files to JavaScript.
###

module.exports =

  options:
    separator: 'linefeed'
    bare: true
    join: false
    sourceMap: false

  server:
    expand: true
    flatten: false
    cwd: 'src/'
    src: ['server/**/*.coffee']
    dest: 'build/src/'
    ext: '.js'

  # test:
  #   files: [
  #     expand: true
  #     cwd: 'test/'
  #     src: ['integration/**/*.coffee']
  #     dest: 'build/test/'
  #     ext: '.js'
  #     extDot: 'first'
  #   ]
