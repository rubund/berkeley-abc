#!/bin/bash

PACKAGENAME=yosys-abc
VERSION=1.01-hg2-67c84cdd49e4
rm -rf createdeb/
mkdir createdeb
cd createdeb
rm -rf $PACKAGENAME-$VERSION
mkdir $PACKAGENAME-$VERSION
cp -r ../abc  $PACKAGENAME-$VERSION/
cp -r ../README  $PACKAGENAME-$VERSION/
tar -czf ${PACKAGENAME}_${VERSION}.orig.tar.gz $PACKAGENAME-$VERSION
#tar -xzf ${PACKAGENAME}_${VERSION}.orig.tar.gz 
cp -r -v ../debian $PACKAGENAME-$VERSION/
cd $PACKAGENAME-$VERSION
dpkg-buildpackage -S
