#!/bin/bash

set -e

b() {
	pushd $1
	dolce-makepkg -C -f
	tar -C $DOLCESDK/arm-dolce-eabi/ -xvf *-arm.tar.xz
	popd
}

. travis_packages.sh
