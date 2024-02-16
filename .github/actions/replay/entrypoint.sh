#!/bin/sh -l

export PUPPETEER_CACHE_DIR=/root/.cache/puppeteer/

read -d '' COMMAND <<-EOF
	  if [ -f "$HOME/ignore" ] && grep "^ignore:$BUILD_DIR" "$HOME/ignore"; then
	    echo "$BUILD_DIR didn't change"
	  else
	    ${BUILD_COMMAND:-echo} && npx @puppeteer/replay $*
	  fi
EOF

OUTPUT=$(sh -c "$COMMAND")
