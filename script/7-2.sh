#!/bin/bash
free_mem=`free -h|awk 'NR==2 {printf $7}'`
free_mem=${free_mem%Gi}
thresh=4
if [ `echo "$free_mem<$thresh" | bc` -eq 1 ];then
    echo  "你的内存容量可能不会够用!"
else
    echo  "你的内存还有很多哦！"
fi  
