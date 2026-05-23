#!/bin/bash
tracepath -n "$1" 2>/dev/null | grep -E '^[ 0-9]+:' | awk -F: '{print $1}' | tail -n 1 | tr -d ' \n'
