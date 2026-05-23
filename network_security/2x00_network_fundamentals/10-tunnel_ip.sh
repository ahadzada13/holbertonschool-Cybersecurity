#!/bin/bash
ip addr show tun0 2>/dev/null | grep -w inet | awk '{print $2}' | cut -d/ -f1 | tr -d '\n'
