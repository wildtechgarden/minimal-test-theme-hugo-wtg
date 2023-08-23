#!/bin/bash

set -e
set -o pipefail

SITEROOT="$(pwd)"

HUGO_RESOURCEDIR="$(pwd)"/resources systemd-run --unit=hugo-serve --user hugo serve --source "$(pwd)"/exampleSite --environment "production" --config "$(pwd)"/exampleSite/hugo.toml --port 1313 --bind 127.0.0.1

sleep 2

if muffet http://127.0.0.1:1313/ | tee check-links.log; then
	echo "ok"
	RET=0
else
	echo "not ok"
	RET=1
fi

systemctl --user stop hugo-serve
exit $RET
