#!bin/bash -x

folder="abc"

if [ -d $folder]
then
	echo {'folder already exists'}
else
	mkdir $folder 
	echo {'folder $folder created'}
fi

