#!/bin/bash
#calls all other scripts

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/trycatch.sh	#https://stackoverflow.com/a/25180186

#yaourt	&&	PACKAGE='yaourt'	||
#pacaur	&&	PACKAGE='pacaur'	||
#pacman	&&	PACKAGE='pacman'	||
#sol	&&	PACKAGE='sol'		||
#eopkg	&&	PACKAGE='eopkg'		||
#echo Package manager not current supported, try again sometime later.
#currently borked, consult the all-knowing stack exchange sometime later

echo $DIR
echo $PACKAGE
