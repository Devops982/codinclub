#!/bin/bash

for files in 'ls *.log.1'
do
	base= ` echo $files | awk -F. '{ print $1 }' `
	extension= ` echo $files | awk -F. '{print $2}' `
	DATE=`date +%d-%m-%Y`
	newFile=${base}-${DATE}.${extension}
	echo $newfile
done
