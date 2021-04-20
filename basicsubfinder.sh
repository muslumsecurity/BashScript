#!/bin/bash

wget $1
less index.html | grep "href=" | cut -d ":" -f2 | cut -d "/" -f3 | grep "www" >> sub.txt

for sub in $(cat sub.txt)
do 
if [[ $( ping -c 1 $sub ) ]]
then
echo "$sub +++++ pong"
else 
echo "$sub --------- Error"
fi
done
