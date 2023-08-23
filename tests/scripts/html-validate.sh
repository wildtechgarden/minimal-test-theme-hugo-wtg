#!/bin/bash

set -e
set -o pipefail

SITEROOT="$(pwd)"

if java -jar ~/jar/vnu.jar --Werror $(find public -name '*.html') | tee html-validate.log; then
	if java -jar ~/jar/vnu.jar --Werror --css $(find public -name '*.css') | tee html-validate.log; then
		echo "ok"
		exit 0
	else
		echo "not ok"
		exit 1
	fi
else
	echo "not ok"
	exit 1
fi
