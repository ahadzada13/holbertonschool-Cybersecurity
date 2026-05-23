#!/bin/bash
ip route get "$1" 2>/dev/null | grep -q "via" && echo -n "REMOTE" || echo -n "LOCAL"
