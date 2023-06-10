#!/usr/bin/env bash

if [ -x "$(command -v feh)" ]; then
  feh --randomize --bg-fill $HOME/.config/hypr/backgrounds/*
fi