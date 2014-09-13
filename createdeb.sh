#!/bin/bash

PACKAGENAME=berkeley-abc
VERSION=1.01-20140822hg4d547a5e065b
rm -rf createdeb/
mkdir createdeb
cd createdeb
rm -rf $PACKAGENAME-$VERSION
mkdir $PACKAGENAME-$VERSION
cp -r ../abc/*  $PACKAGENAME-$VERSION/
tar -czf ${PACKAGENAME}_${VERSION}.orig.tar.gz $PACKAGENAME-$VERSION
#tar -xzf ${PACKAGENAME}_${VERSION}.orig.tar.gz 
cp -r -v ../debian $PACKAGENAME-$VERSION/
cd $PACKAGENAME-$VERSION
dpkg-buildpackage
