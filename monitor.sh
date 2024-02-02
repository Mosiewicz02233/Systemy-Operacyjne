#!/bin/bash

while true; do
    clear
    
    echo "=== Monitorowanie zasobów systemowych ==="
    echo "Użycie CPU i pamięci: "
    top -b -n 1 | grep -E "^(%|KiB|Mem|CPU)" | grep -v "grep"

    echo -e "\nUżycie dysku: "
    df -h

    sleep 5

done