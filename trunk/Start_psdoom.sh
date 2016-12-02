#!/bin/bash

PSDOOMPSCMD="./contrib/psdoom-k8s-ctl ps" \
PSDOOMRENICECMD="true" \
PSDOOMKILLCMD="./contrib/psdoom-k8s-ctl kill" \
./src/psdoom -iwad Doom2.wad -file psdoom2.wad -config /home/leo/.psdoom/config.cfg
