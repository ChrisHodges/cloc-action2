#!/usr/bin/env sh
cloc $(git rev-parse HEAD) | tee -a cloc.txt

#get the second last line in the cloc.txt 
line=$( tail -n 2 cloc.txt | head -1 )

#get the code lines SUM
pat="SUM"
num='undefined'
if [[ "A SUM X" =~ $pat ]]; then num='Assigned'; fi

echo "::set-output name=lines::${num}"
