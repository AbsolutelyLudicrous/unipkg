#/bin/bash
echo Installing packages:
echo $@
echo Authentication required
sudo eopkg install $@
