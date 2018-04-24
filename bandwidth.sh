#!/bin/bash

source ./lib.sh

bandwidth_iperf3_udp() {
    domain=$1
    sleep 5
    iperf3 -u -c ${domain}
}


bandwidth_iperf3_tcp() {
    domain=$1
    sleep 5
    iperf3 -c ${domain}
}

