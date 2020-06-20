#!/bin/bash

set -e

shopt -s nullglob

b() {
	cd $1
	FILE=$(echo *-arm.tar.xz)
	if [ -n "$FILE" ]; then
		source VITABUILD
		echo "Uploading $FILE as $pkgname.tar.xz..."
		mv "$FILE" "/var/www/bin/dolcesdk/packages/$pkgname.tar.xz"
	fi
	cd ..
}

. travis_packages.sh
