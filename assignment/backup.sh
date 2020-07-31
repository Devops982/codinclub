#!/bin/bash -x

for files in 'ls '
do
	'find . -mtime +7 | ls -p '
done
