#/bin/bash
echo Querying package database with following terms:
echo $@
echo System package manager taking over, unipkg\'s job is done.
eopkg search $@
