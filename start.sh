#!/bin/sh

echo "Starting lighttpd, serving files on port 3000 ..."

lighttpd -D -f lighttpd.conf

# sleep infinity