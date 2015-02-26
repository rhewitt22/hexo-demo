module.exports = function(grunt) {
  'use strict';
  require('load-grunt-tasks')(grunt);

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    shell: {
      hexoServe: {
        command: 'hexo server'
      },
      hexoGenerate: {
        command: 'hexo generate'
      },
      hexoClean: {
        command: 'hexo clean'
      }
    },

    sass: {
      dist: {
        files: {
          'scss/unprefixed/styles.css': 'scss/styles.scss'
        }
      }
    },

    autoprefixer: {
      options: {
        browsers: ['last 3 versions']
      },
      target: {
        src: 'scss/unprefixed/styles.css',
        dest: 'themes/usfws/source/css/styles.css'
      }
    },

    jshint: {
      options: {
        reporter: require('jshint-stylish'),
        jshintrc: true,
        force: true
      },
      all: ['Gruntfile.js', 'themes/**/*.js']
    },

    watch: {
      options: {
        livereload: true
      },
      site: {
        files: ['source/**/*.html', 'source/**/*.md', 'themes/**/*.swig', 'scaffolds/*.md'],
        tasks: ['shell:hexoGenerate']
      },
      css: {
        files: ['scss/**/*.scss'],
        tasks: ['sass', 'autoprefixer', 'shell:hexoGenerate']
      },
      js: {
        files: ['themes/**/*.js'],
        tasks: ['jshint', 'shell:hexoGenerate']
      }//,
      // svg: {
      //   files: ['src/img/svg/*.svg'],
      //   tasks: ['icons', 'css', 'shell:jekyllBuild']
      // }
    }
  });

  // Default task(s).
  grunt.registerTask('serve', ['shell:hexoServe']);
  grunt.registerTask('default', ['shell:hexoClean', 'jshint', 'shell:hexoGenerate', 'watch']);

  // Build/Deploy
  // 1. Sass compressed output 
  // 2. Uglify JS
  // 3. Optimize images (compression)
};