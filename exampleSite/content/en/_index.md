+++
title = "Hugo minimal test theme"
date = "2022-04-07T23:53:03Z"
publishDate = "2022-04-07T23:53:03Z"
author = "Daniel F. Dickinson"
tags = [
	"homepage"
]
description = """\
Demo site for Daniel F. Dickinson's (DFD) Hugo minimal test theme\
"""
layout = "single"
[[cascade]]
pageCanonical = true
tags = ["docs"]
[cascade._target]
path = "/readme/README.md"
kind = "page"
[[cascade]]
pageCanonical = false
tags = ["docs"]
[cascade._target]
path = "/readme/**"
kind = "page"
+++

[Daniel F. Dickinson](https://github.com/danielfdickinson) uses this theme for
demo/test sites for the modules on which he works. For a repository for creating
minimal reproducible test cases see either [the v0.3 branch of this
repository](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/tree/v0.3)
or [hugo-testing by jmooring from the Hugo
forums](https://github.com/jmooring/hugo-testing). That use case was previously
a goal of this repository, but such is no longer the case.

See [README](/readme/README.md) for more information, and
[LICENSE](readme/readme/LICENSE) for permissions on use.
