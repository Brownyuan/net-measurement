#!/bin/bash

source ./lib.sh

latency_ping() {
    domain=$1
    num=3
    yellowhint "ping ${domain} with ${num} packet(s)"
    ping -c ${num} ${domain}
}

latency_tcpping() {
    domain=$1
    num=3
    yellowhint "tcpping ${domain} with ${num} packet(s)"
    tcpping -x ${num} ${domain}
}

latency_trace() {
    domain=$1
    yellowhint "trace ${domain}"
    traceroute ${domain}
}

latency_tcptrace() {
    domain=$1
    yellowhint "tcptrace ${domain}"
    sudo traceroute -T ${domain}
    #tcptraceroute ${domain}
    #sudo lft ${domain}
}

latency_mtr() {
    domain=$1
    num=4
    flags="BAW"
    yellowhint "mtr ${domain} with ${num} trial(s)"
    sleep 3
    mtr -4 -c ${num} -o ${flags} ${domain}  
}

latency_tcp_mtr() {
    domain=$1
    num=4
    flags="BAW"
    yellowhint "mtr ${domain} with ${num} trial(s) using tcp packets"
    sleep 3
    mtr -4 -T -c ${num} -o ${flags} ${domain}  
}

latency_udp_mtr() {
    domain=$1
    num=4
    flags="BAW"
    yellowhint "mtr ${domain} with ${num} trial(s) using udp packets"
    sleep 3
    mtr -4 -u -c $num -o ${flags} ${domain} 
}

