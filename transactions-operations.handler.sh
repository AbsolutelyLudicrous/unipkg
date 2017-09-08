#!/bin/bash

#
#handles transaction operations for unipkg
#determines which shell script to execute
#

PACKAGE=$1
OPERATION=$2
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cat $DIR/OPERATIONS | grep -ie $OPERATION || (echo; cat $DIR/asciiart/op-not-supported.asciiart.txt; echo; exit 127)

$PACKAGE$OPERATION ${@:3} || echo Something went wrong, try manually installing with $PACKAGE
