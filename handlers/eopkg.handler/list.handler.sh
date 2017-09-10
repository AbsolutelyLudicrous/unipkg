#/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo List Handler scripts are in:
echo $DIR
echo Interpreted list operation as:
echo $1

case $1 in
	itable)	#InsTallABLE
		$DIR/list-operations/itable.listhandler.sh
		;;
	ited)	#InsTallED
		$DIR/list-operations/ited.listhandler.sh
		;;
	new)	#NEW
		$DIR/list-operations/new.listhandler.sh
		;;
	upable)	#UPgradeABLE
		$DIR/list-operations/upable.listhandler.sh
		;;
	*)
		echo
		cat $DIR/../../asciiart/op-not-supported.asciiart.txt
		echo
		exit 1
esac
