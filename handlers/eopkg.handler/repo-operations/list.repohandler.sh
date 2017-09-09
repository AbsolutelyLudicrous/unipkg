#!/bin/bash
echo Listing repositories
if ! [ $# -eq 0 ]; then
	echo Received following arguments:
	echo $@
	echo Why did you give me these arguments?
	echo Ignoring arguments
fi
eopkg list-repo
