#!/bin/bash
IFS=\n
result=$(df)
all_filesystems=()
less_usage_filesystems=()

while read -r line; do
filesystem=$(echo "$line" | awk '{print $1}')
iused=$(echo "$line" | awk '{print $5}')
all_filesystems+=("$filesystem")
  less_usage_filesystems+=("$iused")
done <<< "$result"

temp_arr_new=()
for avail in "${less_usage_filesystems[@]}"; do
    avail_new=$(sed -e 's/%//' <<< "$avail")
    temp_arr_new+=($avail_new)
done    

echo "All Filesystems"
for filesystem in "${all_filesystems[@]}"; do
  echo "$filesystem"
done

 echo "Tep con dung luong it hown 80% la :"
 
 for result in "${temp_arr_new[@]}"; do
  if [ "$result" -lt 80 ]; then
   echo $result
  fi 
done
