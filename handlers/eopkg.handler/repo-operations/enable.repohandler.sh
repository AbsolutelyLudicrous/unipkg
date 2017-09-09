#!/bin/bash
echo Starting repository enable operation with arguments:
echo $@
echo Authentication required
sudo eopkg enable-repo $@
