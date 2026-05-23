#!/bin/bash
IFS='.' read -r -a ip <<< "$1"; IFS='.' read -r -a mask <<< "$2"; out=(); for i in {0..3}; do out+=("$(( ${ip[i]} | (255 - ${mask[i]}) ))"); done; echo -n "$(IFS='.'; echo "${out[*]}")"
