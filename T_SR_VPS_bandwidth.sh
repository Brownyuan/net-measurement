#!/bin/bash

# PC - Personal Computer
# AP - Access Point
# SR - Soft Router
# VPS - Virtual Private Server
# FI - Foreign Internet
# CI - Chinese Internet

source ./bandwidth.sh
source ./constants.sh

SR_VPS_TCP() {
    greenhint "BANDWIDTH: PC <-----> VPS ${VPS}"
    bandwidth_iperf3_tcp ${VPS}
}

SR_VPS_UDP() {
    greenhint "BANDWIDTH: PC <-----> VPS ${VPS}"
    bandwidth_iperf3_udp ${VPS}
}

SR_VPS_TCP
SR_VPS_UDP
