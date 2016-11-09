#!/bin/bash
set -e
source /pd_build/buildconfig
set -x

## Install Node.js (also needed for Rails asset compilation)
curl -sL https://deb.nodesource.com/setup_7.x | bash -
apt-get install -y build-essential
apt-get install -y nodejs

if [[ ! -e /usr/bin/node ]]; then
	ln -s /usr/bin/nodejs /usr/bin/node
fi
