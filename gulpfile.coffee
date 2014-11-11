gulp       = require 'gulp'
coffee     = require 'gulp-coffee'
uglify     = require 'gulp-uglify'
stylus     = require 'gulp-stylus'
sourcemaps = require 'gulp-sourcemaps'

gulp.task 'coffee', ->
  gulp.src './coffee/**/*.coffee'
    .pipe sourcemaps.init()
    .pipe coffee()
    .pipe uglify()
    .pipe sourcemaps.write('../maps')
    .pipe gulp.dest("./js")

gulp.task 'stylus', ->
  return gulp.src('./stylus/**/*.styl')
    .pipe sourcemaps.init()
    .pipe stylus({compress:yes})
    .pipe sourcemaps.write('../maps')
    .pipe gulp.dest('./css')

gulp.task 'watch', ->
  gulp.watch './coffee/**/*.coffee', (e) -> gulp.run('coffee')
  gulp.watch './stylus/**/*.styl', (e) -> gulp.run('stylus')

gulp.task 'default', ['coffee','stylus','watch']
