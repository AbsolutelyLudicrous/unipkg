#!/bin/bash

#
#handles transaction operations for unipkg
#determines which shell script to execute
#

PACKAGE=$1
OPERATION=$2
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo Transaction-Operation Handler is now taking over

echo Using:		$PACKAGE
echo Trying to call:	$OPERATION
echo unipkg Directory:	$DIR

grep $DIR/OPERATIONS -ie $OPERATION > /dev/null; if [ $? -eq 0 ]; then
	echo Successfully called $OPERATION
	echo Starting operation-specific transaction script
	$PACKAGE$OPERATION ${@:3}
else
	echo
	cat $DIR/asciiart/op-not-supported.asciiart.txt
	echo
	exit 127
fi
