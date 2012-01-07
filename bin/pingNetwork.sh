#!/bin/bash

declare -a ips

index=0
for i in $(seq 254)
do 
    ping -qc 1 "192.168.1.$i" 
    if [[ $? -eq 0 ]]
    then
        ips[$index]=$i
        let "index += 1"
    fi
done

for i in ${ips[@]}
do
    echo "192.168.1.$i OK"
done

