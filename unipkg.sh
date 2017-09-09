#!/bin/bash
#calls all other scripts

echo unipkg Master Call Script is now initializing.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/trycatch.sh	#https://stackoverflow.com/a/25180186

#https://github.com/JoshuaRLi/interjection.sh/blob/master/interjection.sh
#how I determined the package manager

  if command -v pacaur > /dev/null;	then
	PACKAGE=$DIR/handlers/pacaur.handler/
elif command -v yaourt > /dev/null;	then
	PACKAGE=$DIR/handlers/yaourt.handler/
elif command -v pacman > /dev/null;	then
	PACKAGE=$DIR/handlers/pacman.handler/
elif command -v eopkg > /dev/null;	then
	PACKAGE=$DIR/handlers/eopkg.handler/
else
	echo TODO
	echo Submit a pull request on Git and I\'ll merge it.
	exit 1
  fi

OPERATION=$1
ARGS=${@:2}

echo Operation:		$OPERATION
echo Arguments:		$ARGS
echo unipkg directory:	$DIR
echo Handling op with:	$PACKAGE

echo Starting Transaction-Operation Handler

$DIR/transactions-operations.handler.sh $PACKAGE $OPERATION.handler.sh $ARGS
