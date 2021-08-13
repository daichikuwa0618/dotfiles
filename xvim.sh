#!/bin/sh

sudo codesign -f -s XcodeSigner /Applications/Xcode.app && \
  cd; \
  cd XVim2; \
  make

