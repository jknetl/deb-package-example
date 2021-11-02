#!/bin/sh
set -e

package_name=hello-world_1_amd64

rm -rf ./distiribution/*

g++ main.cc -o hello-world
g++ my-ack.cc -o my-ack

mkdir -p ./distribution/$package_name/usr/local/bin
cp hello-world ./distribution/$package_name/usr/local/bin
cp my-ack ./distribution/$package_name/usr/local/bin

mkdir -p ./distribution/$package_name/DEBIAN
cp ./package-metadata/control ./distribution/$package_name/DEBIAN

cd distribution
dpkg-deb --build --root-owner-group hello-world_1_amd64/
cd -
