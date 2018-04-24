#!/bin/bash

# PC - Personal Computer
# AP - Access Point
# SR - Soft Router
# VPS - Virtual Private Server
# FI - Foreign Internet
# CI - Chinese Internet

source ./latency.sh
source ./constants.sh

VPS_FI() {
    greenhint "LATENCY: VPS <-----> FI"
    loop latency_tcp_mtr FI
}



VPS_FI
