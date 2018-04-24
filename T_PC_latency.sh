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
    greenhint "LATENCY: PC <-----> AP"
    loop latency_mtr AP
}

PC_SR() {
    greenhint "LATENCY: PC <-----> SR"
    loop latency_mtr SR
}


PC_VPS() {
    greenhint "LATENCY: PC <-----> VPS"
    loop latency_mtr VPS
}

PC_FI() {
    greenhint "LATENCY: PC <-----> FI"
    loop latency_tcp_mtr FI
}

PC_CI() {
    greenhint "LATENCY: PC <-----> CI"
    loop latency_tcp_mtr CI
}



PC_AP
PC_SR
PC_VPS
PC_FI
PC_CI
