#!/bin/bash

# PC - Personal Computer
# AP - Access Point
# SR - Soft Router
# VPS - Virtual Private Server
# FI - Foreign Internet
# CI - Chinese Internet

source ./latency.sh
source ./constants.sh

SR_VPS() {
    greenhint "LATENCY: SR <-----> VPS"
    loop latency_tcp_mtr VPS
    loop latency_udp_mtr VPS
}

SR_CI() {
    greenhint "LATENCY: SR <-----> CI"
    loop latency_ping CI
}



SR_VPS
SR_CI
