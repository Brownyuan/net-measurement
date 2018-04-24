#!/bin/bash

# PC - Personal Computer
# AP - Access Point
# SR - Soft Router
# VPS - Virtual Private Server
# FI - Foreign Internet
# CI - Chinese Internet

source ./packetloss.sh
source ./constants.sh

VPS_FI() {
    greenhint "PACKET LOSS: VPS <-----> FI"
    loop ploss_mtr FI
}



VPS_FI
