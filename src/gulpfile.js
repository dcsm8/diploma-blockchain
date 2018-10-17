'use strict';

const fs = require('fs');
const gulp = require('gulp');
const bump = require('gulp-bump');
const shell = require('shelljs');

const getPackageJson = function () {
    return JSON.parse(fs.readFileSync('./package.json', 'utf8'));
};

gulp.task('bump', function(cb) {
    return gulp.src('./package.json')
        .pipe(bump())
        .pipe(gulp.dest('./'));
});

gulp.task('update', function(cb) {
    const pkg = getPackageJson();
    const fileName = `tutorial-network@${pkg.version}.bna`;
    shell.exec(`composer archive create -t dir -n . -a ./dist/${fileName}`);
    shell.exec(`composer network install -a ./dist/${fileName} -c PeerAdmin@hlfv1`);
    shell.exec(`composer network upgrade -c PeerAdmin@hlfv1 -n ${pkg.name} -V ${pkg.version}`);
});

gulp.task('start', function() {
    const pkg = getPackageJson();
    const fileName = `tutorial-network@${pkg.version}.bna`;
    shell.exec('rm -rf ~/.composer/');
    shell.cd('..');
    shell.exec('export FABRIC_VERSION=hlfv12');
    shell.exec('./stopFabric.sh');
    shell.exec('./teardownFabric.sh');
    shell.exec('./startFabric.sh');
    shell.exec('./createPeerAdminCard.sh');
    shell.cd('./src');
    shell.exec(`composer network install --card PeerAdmin@hlfv1 --archiveFile ./dist/${fileName}`);
    shell.exec(`composer network start --networkName tutorial-network --networkVersion ${pkg.version} --networkAdmin admin --networkAdminEnrollSecret adminpw --card PeerAdmin@hlfv1 --file networkadmin.card`);
    shell.exec('composer card import --file networkadmin.card');
    shell.exec('composer network ping --card admin@tutorial-network');
});

gulp.task('stop-server', function() {
    shell.cd('..');
    shell.exec('export FABRIC_VERSION=hlfv12');
    shell.exec('./stopFabric.sh');
    shell.exec('./teardownFabric.sh');
});

gulp.task('multi', function() {
    shell.exec('pwd');
    shell.exec('./multi.sh');
});