#!/bin/bash 
c_hello=0 
c_world=0

while read -r line;
do
		if [ "$line" = "Hello,1" ]; then
				c_hello=$((c_hello+1)) ;
		elif [ "$line" = "world,1" ]; then
				c_world=$((c_world+1))
		fi
done 
echo "hello=$c_hello"
echo "world=$c_world"
