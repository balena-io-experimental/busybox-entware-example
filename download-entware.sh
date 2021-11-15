#!/bin/sh

case $1 in
   "rpi")  export OPKG_ARCH="armv5sf-k3.2"
       ;;
   "aarch64") export OPKG_ARCH="aarch64-k3.10"
       ;;
   "amd64") export OPKG_ARCH="x64-k3.2"
       ;;
   "armv7hf") export OPKG_ARCH="armv7sf-k3.2"
       ;;
   "i386") export OPKG_ARCH="x86-k2.6"
       ;;
   *) echo >&2 "error: unsupported architecture ($1)"; exit 1 ;; 
esac

URL=http://bin.entware.net/${OPKG_ARCH}/installer/generic.sh
wget $URL -O /tmp/installer.sh
chmod +x /tmp/installer.sh

/tmp/installer.sh
