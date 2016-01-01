var gulp      = require('gulp');
var sass      = require('gulp-sass');
var webserver = require('gulp-webserver');

gulp.task('concat', function(){
    gulp.src('./src/js/easing/*.js')
        .pipe(concat('easing.js'))
        .pipe(gulp.dest('./prod/js/'));
});

gulp.task('sass', function() {
    gulp.src('./css/scss/*.scss')
//        .pipe(plumber({
//            errorHandler: notify.onError("<%= error.message %>")
//         }))
        .pipe(sass())
        .pipe(gulp.dest('./css/'));
});

gulp.task('copy', function() {
    gulp.src('./src/html/*.html')
        .pipe(gulp.dest('./'));
    gulp.src('./src/js/*.js')
        .pipe(gulp.dest('./js/'));
});

gulp.task('server', function() {
   gulp.src('./')
    .pipe(webserver({
        livereload: true,
        port: 9999,
    }))
//    .pipe(plumber({
//        errorHandler: notify.onError("<%= error.message %>")
//    }));
});

gulp.task('watch', function() {
//    gulp.watch('./src/js/*.js', ['copy']);
//    gulp.watch('./src/js/easing/*.js', ['concat']);
    gulp.watch('./css/scss/*.scss', ['sass']);
//    gulp.watch('./src/html/*.html', ['copy']);
});

gulp.task('default', ['server', 'watch']);
