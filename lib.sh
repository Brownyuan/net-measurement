#!/bin/bash

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[1;32m'

NC='\033[0m' # No Color

hint() {
    printf '=%.0s' {1..40}
    printf '\n'
    printf "${1}${2}${NC}\n"
    printf '=%.0s' {1..40}
    printf '\n'
}

yellowhint() {
    hint ${YELLOW} "${1}"
}

greenhint() {
    hint ${GREEN} "${1}"
}

redhint() {
    hint ${RED} "${1}"
}

loop() {
    fn=$1
    local -n ARG=$2
    for i in "${ARG[@]}"
    do
        ${fn} ${i}
    done 
}
