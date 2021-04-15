#!/bin/bash

wget https://trackerslist.com/best_aria2.txt -O /tmp/tracker-best.txt

[ -s /tmp/tracker-best.txt ] || exit 0 

tmp=$(cat /tmp/tracker-best.txt)

/etc/init.d/aria2 stop

uci set aria2.main.bt_tracker=$tmp

uci commit aria2

/etc/init.d/aria2 start