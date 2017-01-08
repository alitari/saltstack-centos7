#!/bin/bash

# Set minion id
echo $MINION_ID > /etc/salt/minion_id

# Set salt grains
if [ ! -z "$SALT_GRAINS" ]; then
  echo "INFO: Set grains on $SALT_NAME to: $SALT_GRAINS"
  echo $SALT_GRAINS > /etc/salt/grains
fi


# Start salt-$SALT_USE
echo "INFO: Starting salt-minion"
/usr/bin/salt-minion --log-level=$LOG_LEVEL