#!/bin/sh
base=${PWD}
for dir in * ; do 
	if [ ! -d ${dir} ] ; then
		continue	
	fi

	echo ""
	echo "-----------------------"
	echo ${dir}

	cd ${base}/${dir}
	git pull origin master
	cd ..
done
