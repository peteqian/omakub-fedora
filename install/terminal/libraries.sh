#!/bin/bash

sudo dnf install -y \
  @development-tools pkg-config autoconf bison clang rustc \
  openssl-devel readline-devel zlib-devel libyaml-devel readline-devel ncurses-devel libffi-devel gdbm-devel jemalloc \
  vips-devel ImageMagick ImageMagick-devel mupdf mupdf-tools libgtop2-devel clutter-devel \
  redis sqlite sqlite-devel mysql-devel libpq-devel postgresql postgresql-server
