#!/bin/bash
cd /usr/local/bin/
chmod 777 /usr/local/bin/iiot_gw
chmod 777 /usr/local/bin/iiot_hdms
chmod 777 /usr/local/bin/command.sh
iiot_hdms &
iiot_gw
