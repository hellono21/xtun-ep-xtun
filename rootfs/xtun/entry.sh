#!/bin/sh

#/tinyvpn -c -r ep:443 --log-level 5 --tun-dev tunx
/xtun/xtun -c /xtun/xtun.toml

#tail -f /dev/null
