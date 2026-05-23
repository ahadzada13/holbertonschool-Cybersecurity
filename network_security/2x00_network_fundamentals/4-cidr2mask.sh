#!/bin/bash
mask=""; for i in {1..4}; do n=$(( $1 - (i-1)*8 )); [ $n -ge 8 ] && mask+="255." || { [ $n -le 0 ] && mask+="0." || mask+="$(( 256 - 2**(8-n) ))."; }; done; echo -n "${mask%.*}"
