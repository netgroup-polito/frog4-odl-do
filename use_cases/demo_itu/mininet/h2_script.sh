#!/bin/sh
ifconfig h2-eth0 down
ifconfig h2-eth0 up
ifconfig h2-eth0 mtu 1450
route add default gw 10.0.0.254
tc qdisc add dev h2-eth0 root netem delay 0.250ms rate 1Gbit
