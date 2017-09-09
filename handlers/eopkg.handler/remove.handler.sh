#!/bin/bash
echo Removing packages:
echo $@
echo Authentication required
echo System package manager taking over, unipkg\'s job is done.
sudo eopkg remove $@
