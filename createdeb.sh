#!/bin/bash

PACKAGENAME=yosys-abc
VERSION=1.01-hg2058c8ccea68
rm -rf createdeb/
mkdir createdeb
cd createdeb
mkdir $PACKAGENAME-$VERSION
cp -r ../abc  $PACKAGENAME-$VERSION/
cp -r ../README  $PACKAGENAME-$VERSION/
tar -czf $PACKAGENAME_$VERSION.orig.tar.gz $PACKAGENAME-$VERSION
cp -r -v ../debian $PACKAGENAME-$VERSION/
cd $PACKAGENAME-$VERSION
dpkg-buildpackage
