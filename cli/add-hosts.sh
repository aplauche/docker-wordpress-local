#!/bin/bash

set -e

source "../.env"

DOMAIN=$(echo "$DOMAIN")

sudo -- sh -c -e "echo '127.0.0.1  ${DOMAIN}' >> /etc/hosts" 

cat /etc/hosts \;
