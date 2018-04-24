#!/bin/bash

# PC - Personal Computer
# AP - Access Point
# SR - Soft Router
# VPS - Virtual Private Server
# FI - Foreign Internet
# CI - Chinese Internet

source ./packetloss.sh
source ./constants.sh

SR_VPS() {
    greenhint "PACKET LOSS: SR <-----> VPS"
    loop ploss_tcp_mtr VPS
    loop ploss_udp_mtr VPS
}

SR_CI() {
    greenhint "PACKET LOSS: SR <-----> CI"
    loop ploss_mtr CI
}



SR_VPS
SR_CI
