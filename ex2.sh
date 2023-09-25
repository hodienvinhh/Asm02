#!/bin/bash

function proCheck(){
date
echo ""
echo "Process:"
ps -a
echo ""
echo "Memory usage"
free
echo ""
echo "CPU load"
uptime
echo ""
echo "Kernel version is"
echo ""
uname -r
}
proCheck
