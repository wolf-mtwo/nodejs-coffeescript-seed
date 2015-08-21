###
  Copy
  Copy files and folders.
###

module.exports =

  server:
    files: [
      expand: true
      dot: true
      cwd: 'src/server'
      dest: 'build/src/server'
      src: [
        '**/*'
        '!**/*.coffee'
      ]
      filter: 'isFile'
    ]

  instrument:
    files: [
      expand: true
      dot: true
      cwd: 'src/server/config'
      filter: 'isFile'
      src: [
        '**/*.json'
      ]
      dest: "coverage/instrument/build/src/server/config"
    ]
