#!/bin/bash


case "$1" in
"inuse") grep TCP /proc/net/sockstat | awk '{print $3}';;
"orphan") grep TCP /proc/net/sockstat | awk '{print $5}';;
"tw") grep TCP /proc/net/sockstat | awk '{print $7}';;
"alloc") grep TCP /proc/net/sockstat | awk '{print $9}';;
"mem") grep TCP /proc/net/sockstat | awk '{print $11}';;
*) echo invalid param;;
esac
