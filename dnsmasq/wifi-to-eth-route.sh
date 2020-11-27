#!/bin/bash

# Based on git@github.com:arpitjindal97/resin-route.git
# Relies on a never-default/low interface metric eth0 connection in /boot/system-connections

ip_address="192.168.0.1"
netmask="255.255.255.0"
eth="eth0"
wlan="wlan0"

# iptables -F
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -t nat -A POSTROUTING -o $wlan -j MASQUERADE
iptables -A FORWARD -i $wlan -o $eth -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i $eth -o $wlan -j ACCEPT

sysctl net.ipv4.ip_forward

ifconfig $eth $ip_address netmask $netmask

# Remove default route created by dhcpcd
ip route del 0/0 dev $eth &> /dev/null

dnsmasq \
    --no-daemon \
    --log-queries=extra \
    --bind-interfaces \
    --listen-address=$ip_address \
    --interface=$eth