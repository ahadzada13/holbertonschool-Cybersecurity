#!/bin/bash
ip route show default 2>/dev/null | grep -w default | awk '{print $3}' | tr -d '\n'
