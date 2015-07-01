module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    'gh-pages':
      options:
        base: 'dist'
      src: '**/*'
    sass:
      dist:
        files: [{
          expand: true,
          cwd: 'src/sass',
          src: ['*.sass'],
          dest: 'dist/css',
          ext: '.css'
        }]
    coffee:
      compile:
        expand: true
        flatten: false
        cwd: 'src/coffee'
        src: ['*.coffee']
        dest: 'dist/js'
        ext: '.js'
    jade:
      dist:
        options:
          pretty: true
        files: [
            expand: true
            cwd: 'src'
            src: [ '*.jade' ]
            dest: 'dist'
            ext: '.html'
          ]
    copy:
      images:
        files: [
          expand: true
          cwd: 'src'
          src: ['images/**']
          dest: 'dist'
        ]
      vendor:
        files: [
          expand: true
          cwd: 'src/vendor'
          src: ['**/**']
          dest: 'dist'
        ]
    watch:
      files: ['src/*.jade', 'src/sass/*.sass', 'src/coffee/*.coffee'],
      tasks: ['build']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.loadNpmTasks 'grunt-gh-pages'

  grunt.registerTask 'build',  ['jade', 'sass', 'coffee', 'copy']
  grunt.registerTask 'default',  ['watch']
