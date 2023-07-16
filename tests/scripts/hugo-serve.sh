#!/bin/bash

export HUGO_RESOURCEDIR="$(pwd)/resources"
hugo  serve --buildDrafts --buildFuture --source exampleSite --environment "development" --config "$(pwd)"/exampleSite/hugo.toml -b http://localhost:1313/
