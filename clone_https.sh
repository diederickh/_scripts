#!/bin/sh
base=${PWD}
addons_dir=${base}/../

while read addon; do
	cd $addons_dir
	if [ ! -d "${addons_dir}${addon}" ] ; then
		git clone https://github.com/roxlu/${addon}.git
	fi

done < "repositories.txt"

