#/bin/bash
echo Installing packages:
echo $@
echo Authentication required
echo System package manager taking over, unipkg\'s job is done.
sudo eopkg install $@
