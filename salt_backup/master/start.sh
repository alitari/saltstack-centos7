#!/bin/bash

# Start salt-$SALT_USE
echo "INFO: Starting salt-master"
/usr/bin/salt-master --log-level=$LOG_LEVEL