#!/bin/bash

PACKAGENAME=yosys-abc
VERSION=0.xx
rm -rf createdeb/
mkdir createdeb
cd createdeb
mkdir $PACKAGENAME-$VERSION
cp -r ../abc  $PACKAGENAME-$VERSION/
tar -czf yosys-abc_0.xx.orig.tar.gz $PACKAGENAME-$VERSION
cp -r -v ../debian $PACKAGENAME-$VERSION/
cd $PACKAGENAME-$VERSION
dpkg-buildpackage
