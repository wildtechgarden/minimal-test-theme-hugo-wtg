$Env:HUGO_RESOURCEDIR="$PWD\resources"
hugo.exe  serve --buildDrafts --buildFuture --environment "development" --config '$PWD\exampleSite\config.toml'
