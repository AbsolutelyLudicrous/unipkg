#/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo Repository Handler scripts are in:
echo $DIR
echo Interpreted repository operation as:
echo $1
echo Performing repository operation with following arguments:
echo ${@:2}

case $1 in
	add)
		$DIR/repo-operations/add.repohandler.sh
		;;
	disable)
		$DIR/repo-operations/disable.repohandler.sh
		;;
	enable)
		$DIR/repo-operations/enable.repohandler.sh
		;;
	list)
		$DIR/repo-operations/list.repohandler.sh
		;;
	rebuild)
		$DIR/repo-operations/rebuild.repohandler.sh
		;;
	remove)
		$DIR/repo-operations/remove.repohandler.sh
		;;
	update)
		$DIR/repo-operations/update.repohandler.sh
		;;
	*)
		echo
		cat $DIR/../../asciiart/op-not-supported.asciiart.txt
		echo
		exit 1
esac
