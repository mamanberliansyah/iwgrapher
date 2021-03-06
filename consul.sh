#!/bin/bash
IP=$(jq -r .id.ip json/config.json)
SERVER=$(jq -r .influx.host json/config.json)

consul agent -data-dir /tmp/consul -client $IP -ui-dir /home/pi -join $SERVER
