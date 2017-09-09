#!/bin/bash
echo Starting repository remove operation with arguments:
echo $@
echo Authentication required
sudo eopkg remove-repo $@
