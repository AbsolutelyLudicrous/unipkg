#!/bin/bash
echo Listing upable \(UPgradeABLE\) packages in $PAGER
TERMWIDTH=$(tput cols)
eopkg list-upgrades | cut --characters=-$TERMWIDTH | $PAGER
echo $PAGER exited
