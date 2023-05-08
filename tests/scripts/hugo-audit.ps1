$regexPattern = '<\!-- raw HTML omitted -->|ZgotmplZ|hahahugo|\[i18n\]|\(<nil>\)|\(&lt;nil&gt;\)'
$Env:HUGO_MINIFY_TDEWOLFF_HTML_KEEPCOMMENTS="true"
$Env:HUGO_ENABLEMISSINGTRANSLATIONPLACEHOLDERS="true"
$curdir = Get-Location
$Env:HUGO_RESOURCEDIR = "$curdir\resources"
hugo.exe  --gc --buildDrafts --buildFuture --environment "development" --destination "$curdir\public"
$lines = Get-ChildItem -Path .\public -Recurse | Select-String -Pattern $regexPattern -CaseSensitive:$false | Select-Object Filename, LineNumber, Line, Path | Format-Table
if ($lines.Count -eq 0) {
	Write-Output "ok"
} else {
	Write-Output $lines
	Write-Output "not ok"
}
