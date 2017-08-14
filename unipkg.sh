#!/bin/bash
#calls all other scripts

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/trycatch.sh	#https://stackoverflow.com/a/25180186

#https://github.com/JoshuaRLi/interjection.sh/blob/master/interjection.sh
#how I determined the package manager

  if command -v pacaur > /dev/null;	then
	PACKAGE=`which pacaur`
elif command -v yaourt > /dev/null;	then
	PACKAGE=`which yaourt`
elif command -v pacman > /dev/null;	then
	PACKAGE=`which pacman`
elif command -v eopkg > /dev/null;	then
	PACKAGE=`which eopkg`
else
	echo TODO
	exit 1
  fi

echo $DIR
echo $PACKAGE
