#!/bin/bash

set -e

./start.sh

source /etc/profile.d/clash.sh

proxy_on

exec "$@"
