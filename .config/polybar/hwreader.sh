#!/bin/bash
filename="/home/jkaspar/Documents/Engl 100/hw.txt"
curdate=$(date '+%Y%m%d')
count=0;
while read -r line; do
    name="$line"
    first="${name:0:1}"
    date="${name:0:8}"
    if [ "$first" != "#" ] && [ "$first" != "<" ];
    then
        if [ $date -ge $curdate ];
        then
            let count++
        fi
    fi
        
done < "$filename"
echo "$count";
