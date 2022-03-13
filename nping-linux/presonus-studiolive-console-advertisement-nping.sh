#!/bin/sh
# ******************************************************
# * Needs NPING (part of NMAP package) and root access *
# ******************************************************
if [ "x$1" = "x" ] ; then
  echo "Usage $0 SRC_IP"
  exit 1
fi

sudo nping --udp -g 53000 -p 47809 -S "$1" --dest-ip 255.255.255.255 --delay 3s --count 0 -N \
--data 5543000108cf44416500000000040080481c48672360514f924e1e46915051d153747564696f4c6976652032345200415544005241303030303030303030300046616b6520436f6e736f6c6500
