#!/bin/bash
outstr=""
for dir in /config/keys/*
do
    dir=${dir%*/}
    outstr="$outstr# ${dir##*/}\n$(cat $dir)\n"
done
echo -e "$outstr" > /config/.ssh/authorized_keys
