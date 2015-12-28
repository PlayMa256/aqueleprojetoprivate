var gulp = require('gulp');
var sass = require('gulp-sass');
var autoprefixer = require('gulp-autoprefixer');


gulp.task('sass', function(){
	return gulp.src("sass/*.scss")
	.pipe(sass())
	.pipe(autoprefixer())
	.pipe(gulp.dest("dist/css"));
});

gulp.task('watch:styles', function(){
	//gulp.watch('sass/*.scss', ['postcss']);
	gulp.watch('sass/*.scss', ['sass']);
});
