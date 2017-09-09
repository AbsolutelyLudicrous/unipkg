#!/bin/bash
echo Starting repository disable operation with arguments:
echo $@
echo Authentication required
sudo eopkg disable-repo $@
