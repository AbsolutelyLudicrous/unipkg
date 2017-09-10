#!/bin/bash
echo Performing full system upgrade
if ! [ $# -eq 0 ]; then
	echo Received following arguments:
	echo $@
	echo Why did you give me these arguments?
	echo Ignoring arguments
fi
echo Authentication required
sudo eopkg upgrade
