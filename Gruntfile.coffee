module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      options:
        bare: true
      compile:
        files:
          'dist/Twitter Bootstrap 3 Grid iPhone Portrait.jsx':        ['src/grid.coffee','src/iphone-portrait.coffee']
          'dist/Twitter Bootstrap 3 Grid iPhone Landscape.jsx':        ['src/grid.coffee','src/iphone-landscape.coffee']
          'dist/Twitter Bootstrap 3 Grid Tablet.jsx':        ['src/grid.coffee','src/tablets.coffee']
          'dist/Twitter Bootstrap 3 Grid Desktop.jsx':       ['src/grid.coffee','src/desktops.coffee']
          'dist/Twitter Bootstrap 3 Grid Large Desktop.jsx': ['src/grid.coffee','src/large-desktops.coffee']

    mochaTest:
      files: ['test/**/*.coffee']

    mochaTestConfig:
      options:
        reporter: 'spec'
        ui: 'bdd'
        compilers: 'coffee:coffee-script'

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-mocha-test'

  grunt.registerTask 'default', ['coffee']
  grunt.registerTask 'test', ['mochaTest']