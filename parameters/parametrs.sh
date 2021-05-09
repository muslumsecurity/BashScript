#!/bin/bash


for i in $(cat sub.txt) 
do 
	for m in $(cat lfi.txt)
	do 
	echo $i/$m >> cleanpar.txt
	done 
done 


cat cleanpar.txt|cut -d ":" -f3 > newlfi.txt
for i in $(cat newlfi.txt);do echo $i|cut -d "{" -f1;done > cleanurl.txt

rm newlfi.txt
rm cleanpar.txt


for i in $(cat cleanurl.txt)
do 
	for b in $(cat lfipayloads.txt )
	do 
	
	echo $i.$b >> attack.txt
	    	
	done 
done

rm cleanurl.txt
