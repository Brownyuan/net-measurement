#!/bin/bash

source ./lib.sh

flow_ping() {
    domain=$1
    num=10
    sudo ping -c ${num} -f ${domain}
}


ploss_mtr() {
    domain=$1
    num=8
    flags="LDSR"
    yellowhint "mtr ${domain} with ${num} trial(s)"
    sleep 3
    mtr -c ${num} -o ${flags} ${domain}  
}

ploss_tcp_mtr() {
    domain=$1
    num=8
    flags="LDSR"
    yellowhint "mtr ${domain} with ${num} trial(s) using tcp packets"
    sleep 3
    mtr -T -c ${num} -o ${flags} ${domain}  
}

ploss_udp_mtr() {
    domain=$1
    num=8
    flags="LDSR"
    yellowhint "mtr ${domain} with ${num} trial(s) using udp packets"
    sleep 3
    mtr -u -c $num -o ${flags} ${domain} 
}

