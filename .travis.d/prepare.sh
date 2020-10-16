#!/usr/bin/env bash

set -e

git clone --depth=1 https://github.com/DolceSDK/ddpm.git
bash ddpm/dolcesdk-update.sh
rm -rf ddpm
mkdir deploy
