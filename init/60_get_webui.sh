#!/bin/bash

[[ ! -d /config/www/webui/.git ]] && (git clone https://github.com/Novik/ruTorrent /config/www/webui && \
chown -R abc:abc /config)

# opt out for autoupdates
[ "$ADVANCED_DISABLEUPDATES" ] && exit 0

cd /config/www/webui
git pull
chown -R abc:abc /config
