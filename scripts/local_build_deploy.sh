#!/bin/bash

set -e
set -o pipefail

rm -rf public

URL="https://www.minimal-test-theme.wtg-demos.ca/"
export HUGO_PARAMS_DEPLOYEDBASEURL="$URL"
export BASEURL="$URL"

HUGO_RESOURCEDIR="$(pwd)/resources" hugo --gc --minify -b $BASEURL --source exampleSite --destination $(pwd)/public
rclone sync --progress public/ minimal-test-theme:./
