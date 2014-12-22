module.exports = function(grunt) {

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        sass: {                      
            dist: {                      
              files: {                      
                'css/main.css': '_sass/main.scss'
              }
            }
        },
        watch: {
          css: {
            files: ['_sass/*.scss','css/*.css'],
            tasks: ['sass:dist',],
            options: {
              livereload: true,
            }
          },
        },
    });

    // 3. Where we tell Grunt we plan to use this plug-in.

    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-watch');

    // 4. Where we tell Grunt what to do when we type "grunt" into the terminal.

    grunt.registerTask('default', ['sass','watch']); 

};