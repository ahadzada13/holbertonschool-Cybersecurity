#!/bin/bash
IFS='.' read -r -a octets <<< "$1"; out=(); for o in "${octets[@]}"; do out+=("$(printf "%08d" "$(echo "obase=2; $o" | bc)")"); done; echo "$(IFS='.'; echo "${out[*]}")"
