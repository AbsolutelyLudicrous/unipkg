#!/bin/bash
echo Removing packages:
echo $@
echo Authentication required
sudo eopkg remove $@
