#!/bin/bash
df_output=$(df -hP | tail -n +2 | tr -s ' ')
# Tao 1 mang
arr=()
# Dung vong lap de them cot thu 1 vao mang
while read -ra line; do
   fields=(${line// / })
   arr+=($fields)
done < <(df -h)
# Dung vong lap de in ra gia tri cua cot 1
for result in "${arr[@]}"; do
     echo $result
done

# Lay ra gia tri co bo nho con lai it hon 80%
while IFS= read -r line; do
  #  echo $line
    fs=$(echo $line | cut -d ' ' -f1)
    usage=$(echo $line | cut -d ' ' -f5 | tr -d '%')
    
    if (( $usage > 20 )); then
   	echo "Filesystem $fs have less than 80% free space. (Usage: $usage)"
    fi											
done <<< "$df_output"
