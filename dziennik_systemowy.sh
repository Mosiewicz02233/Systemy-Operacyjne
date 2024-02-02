#!/bin/bash

log_file="/var/log/syslog"

num_entries=10

echo "=== Analiza dziennika systemowego ==="
echo -e "\n1. Liczba błędów: "
grep -c "ERROR" $log_file

echo -e "\n2. Liczba ostrzeżeń: "
grep -c "WARNING" $log_file

echo -e "\n3. Ostatnie $num_entries wpisów: "
tail -n $num_entries $log_file