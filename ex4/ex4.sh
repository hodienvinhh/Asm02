#!/bin/bash
i=1
lines=$(cat note.txt)
while read line; do
echo $i : $line
i=$(($i + 1))
done < <(cat note.txt)
