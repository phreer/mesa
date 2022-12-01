#!/usr/bin/bash

PREFIX=$HOME/install/mesa-dev

meson setup \
  -Dprefix=$PREFIX \
  -Dgallium-drivers=iris,nouveau,virgl,swrast \
  -Dplatforms=x11,wayland \
  builddir $@
