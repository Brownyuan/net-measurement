#!/bin/bash

# PC - Personal Computer
# AP - Access Point
# SR - Soft Router
# VPS - Virtual Private Server
# FI - Foreign Internet
# CI - Chinese Internet

source ./latency.sh
source ./constants.sh

PC_AP() {
    echo ""
}

PC_SR() {
    greenhint "LATENCY: PC <-----> SR ${SR}"
    latency_mtr ${SR}
}


PC_VPS() {
    greenhint "LATENCY: PC <-----> VPS ${VPS}"
    latency_mtr ${VPS}
}

PC_FI() {
    greenhint "LATENCY: PC <-----> FI ${FI}"
    latency_tcp_mtr ${FI}
}

PC_CI() {
    greenhint "LATENCY: PC <-----> CI ${CI}"
    latency_tcp_mtr ${CI}
}



#PC_AP
PC_SR
PC_VPS
PC_FI
PC_CI
