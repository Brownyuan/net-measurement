#!/bin/bash

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



