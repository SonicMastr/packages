#!/bin/bash

# this file is included from travis_build and travis_upload in order to reuse package names

# since we don't have dep tracking, we need to build in a specific order
b zlib
b bzip2
b libzip
b libpng
b libexif
b libjpeg-turbo
b jansson
b yaml-cpp
b freetype
b harfbuzz
b fftw
b libvita2d
b libvita2d_sys
b libmad
b libogg
b libvorbis
b flac
b libtremor
b libmikmod
b libftpvita
b henkaku
b taihen
b onigmo
b sdl
# b sdl_image
# b sdl_mixer
# b sdl_net
# b sdl_ttf
# b sdl_gfx
b sdl2
# b sdl2_image
# b sdl2_mixer
# b sdl2_net
# b sdl2_ttf
# b sdl2_gfx
b openssl
b curl
b curlpp
b expat
b opus
b unrar
b glm
b libxml2
b speexdsp
b pixman
b taipool
b mpg123
b libmpeg2
b soloud
b quirc
b libsndfile
b xz
b libarchive
b libmodplug
b libconfig
b libsodium
b libmathneon
b vitaGL
b imgui
b libbaremetal
b minizip
b jsoncpp
b lame
b ffmpeg
b fnblit
b libtheora
b libvitaSAS
b libShellAudio
b psp2dbg
