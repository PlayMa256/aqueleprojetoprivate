var gulp = require('gulp');
var sass = require('gulp-sass');
// var postcss = require('gulp-postcss');
// var autoprefixer = require('gulp-autoprefixer');
// var lost = require('lost');

// gulp.task('postcss', function () {
// 	var processors = [
// 		autoprefixer,
// 		lost
// 	];
//   return gulp
//     .src("sass/*.scss")
//     .pipe(sass())
//     .pipe(postcss(processors))
//     .pipe(gulp.dest("dist/css"));
// });

gulp.task('sass', function(){
	return gulp.src("sass/*.scss")
	.pipe(sass())
	.pipe(gulp.dest("dist/css"));
});

gulp.task('watch:styles', function(){
	//gulp.watch('sass/*.scss', ['postcss']);
	gulp.watch('sass/*.scss', ['sass']);
});
