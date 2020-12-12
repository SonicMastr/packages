#
# Copyright © 2020 DolceSDK contributors
#
# This file is part of DolceSDK
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#

cmake_minimum_required(VERSION 3.0)

set(CMAKE_TOOLCHAIN_FILE "$ENV{DOLCESDK}/share/dolce.toolchain.cmake" CACHE PATH "DolceSDK toolchain file")

project(sdl_image LANGUAGES C)

add_compile_options(
  -O3 -Wall
)

add_compile_definitions(
  LOAD_BMP
  LOAD_GIF
  LOAD_JPG
  LOAD_LBM
  LOAD_PCX
  LOAD_PNG
  LOAD_PNM
  LOAD_TGA
  LOAD_XCF
  LOAD_XPM
  LOAD_XV
  LOAD_XXX
)

include_directories("${CMAKE_INSTALL_PREFIX}/include/SDL")

add_library(SDL_image STATIC
  IMG.c
  IMG_bmp.c
  IMG_gif.c
  IMG_jpg.c
  IMG_lbm.c
  IMG_pcx.c
  IMG_png.c
  IMG_pnm.c
  IMG_tga.c
  IMG_tif.c
  IMG_webp.c
  IMG_xcf.c
  IMG_xpm.c
  IMG_xv.c
  IMG_xxx.c
)

install(TARGETS SDL_image DESTINATION lib)
install(FILES SDL_image.h DESTINATION include/SDL)
