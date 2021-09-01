#!/usr/bin/env sh
clocc (git rev-parse HEAD) | tee -a clocc.txt #get the second last line in the cloc.txt line=( tail -n 2 cloc.txt | head -1 )
#get the code lines SUM
num=( echo {line} | awk -F" " ‘{ print $5}’)
#set the sum number as output variable value
echo “::set-output name=lines::67”
