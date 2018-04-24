#!/bin/bash

# PC - Personal Computer
# AP - Access Point
# SR - Soft Router
# VPS - Virtual Private Server
# FI - Foreign Internet
# CI - Chinese Internet

source ./packetloss.sh
source ./constants.sh

PC_AP() {
    greenhint "PACKET LOSS: PC <-----> AP ${AP}"
    ploss_mtr ${AP}
}

PC_SR() {
    greenhint "PACKET LOSS: PC <-----> SR ${SR}"
    ploss_mtr ${SR}
}

PC_VPS() {
    greenhint "PACKET LOSS: PC <-----> VPS ${VPS}"
    ploss_mtr ${VPS}
}

PC_FI() {
    greenhint "PACKET LOSS: PC <-----> FI ${FI}"
    ploss_tcp_mtr ${FI}
}

PC_CI() {
    greenhint "PACKET LOSS: PC <-----> CI ${CI}"
    ploss_tcp_mtr ${CI}
}



#PC_AP
PC_SR
PC_VPS
PC_FI
PC_CI
