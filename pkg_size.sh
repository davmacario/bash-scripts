#!/bin/bash

apt-cache --no-all-versions show "$@" |
    awk '$1 == "Package:" { p = $2 }
    $1 == "Size:"    { printf("%-15s %10d\n", p, $2) }'
