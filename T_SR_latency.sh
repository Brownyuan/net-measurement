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
    greenhint "LATENCY: SR <-----> VPS ${VPS}"
    latency_tcp_mtr ${VPS}
    latency_udp_mtr ${VPS}
}

SR_CI() {
    greenhint "LATENCY: SR <-----> CI ${CI}"
    latency_mtr ${CI}
}



SR_VPS
SR_CI
