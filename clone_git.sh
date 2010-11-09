#!/bin/sh
base=${PWD}
for dir in * ; do 
	if [ ! -d ${dir} ] ; then
		continue;
	fi
	
	cd ${base}/${dir}
	git clone git@github.com:roxlu/${dir}.git .
	cd ..
done;
