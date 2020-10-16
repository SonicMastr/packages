#!/usr/bin/env bash

set -e

cd "$1"
dolce-makepkg
ddpm *-arm.tar.xz
. VITABUILD
mv *-arm.tar.xz "../deploy/${pkgname}.tar.xz"
git clean -xffd .
