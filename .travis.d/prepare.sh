#!/usr/bin/env bash

set -e

git clone --depth=1 https://github.com/DolceSDK/ddpm.git
python3 ddpm/dolcesdk-update.py
rm -rf ddpm
mkdir deploy
