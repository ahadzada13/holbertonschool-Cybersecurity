#!/bin/bash
mask=""; bits=$1; for i in {1..4}; do if [ $bits -ge 8 ]; then mask+="${mask:+.}$((255))"; bits=$((bits-8)); else m=$(( 256 - (2 ** (8 - bits)) )); mask+="${mask:+.}$m"; bits=0; fi; done; echo "$mask"
