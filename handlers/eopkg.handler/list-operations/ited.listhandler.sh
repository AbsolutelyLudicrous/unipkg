#!/bin/bash
echo Listing ited \(InsTallED\) packages in $PAGER
TERMWIDTH=$(tput cols)
eopkg list-installed | cut --characters=-$TERMWIDTH | $PAGER
echo $PAGER exited
