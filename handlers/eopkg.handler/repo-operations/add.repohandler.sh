#!/bin/bash
echo Starting repository add operation with arguments:
echo $@
echo Authentication required
sudo eopkg add-repo $@
