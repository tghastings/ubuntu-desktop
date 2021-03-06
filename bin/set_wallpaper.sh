#!/bin/bash

if [ -z "$1" ]; then
  echo "$0: <wallpaper> [layout]"
  exit 1
fi

case "$1" in
  1) WPURL="http://digitalblasphemy.com/graphics/HDfree/acumen1HDfree.jpg" ;;
  2) WPURL="http://digitalblasphemy.com/graphics/HDfree/foggyxmasevenight1HDfree.jpg" ;;
  3) WPURL="http://digitalblasphemy.com/graphics/HDfree/pyrexmasHDfree.jpg" ;;
  4) WPURL="http://digitalblasphemy.com/graphics/HDfree/holidayfluorescence2k141HDfree.jpg" ;;
  5) WPURL="http://digitalblasphemy.com/graphics/HDfree/automaton1HDfree.jpg" ;;
  6) WPURL="http://digitalblasphemy.com/graphics/HDfree/portals1HDfree.jpg" ;;
  7) WPURL="http://digitalblasphemy.com/graphics/HDfree/arcana2HDfree.jpg" ;;
  8) WPURL="http://digitalblasphemy.com/graphics/HDfree/fluorescence6HDfree.jpg" ;;
  *) WPURL="0" ;;
esac

case "$2" in
    "fill") HSRCMD="-fill" ;;
  "extend") HSRCMD="-extend" ;;
    "full") HSRCMD="-full" ;;
    "tile") HSRCMD="-tile" ;;
   "cover") HSRCMD="-cover" ;;
  "center") HSRCMD="-center" ;;
         *) HSRCMD="-center" ;;
esac

if [ -n "${WPURL}" ] && [ "${WPURL}" != "0" ]; then
  wget "${WPURL}" -O /tmp/wpimg && hsetroot "${HSRCMD}" /tmp/wpimg && rm /tmp/wpimg
fi
