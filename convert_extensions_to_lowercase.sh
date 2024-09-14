#!/bin/bash

for i in $(find | egrep '\.[[:upper:]]+$')
do
	mv $i $( echo ${i%.*}.$( echo ${i##*.} | tr [[:upper:]] [[:lower:]] ) )
done