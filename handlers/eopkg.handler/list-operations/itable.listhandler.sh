#!/bin/bash
echo Listing itable \(InsTallABLE\) packages in $PAGER
TERMWIDTH=$(tput cols)
eopkg list-available | cut --characters=-$TERMWIDTH | $PAGER
echo $PAGER exited
