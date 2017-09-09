#/bin/bash
echo Force-updating packages:
echo $@
echo Authentication required
echo System package manager taking over, unipkg\'s job is done.
sudo eopkg remove $@
sudo eopkg install $@
