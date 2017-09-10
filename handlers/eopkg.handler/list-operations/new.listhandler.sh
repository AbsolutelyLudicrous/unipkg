#!/bin/bash
echo Listing new packages in $PAGER
TERMWIDTH=$(tput cols)
eopkg list-newest | cut --characters=-$TERMWIDTH | $PAGER
echo $PAGER exited
