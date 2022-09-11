+++
title = "Hugo thème du teste minimale"
date = "2022-04-07T23:53:03Z"
publishDate = "2022-04-07T23:53:03Z"
author ="Daniel F. Dickinson"
description = """\
Demo site au Hugo thème du teste minimal du Daniel F. Dickinson (DFD)\
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

[Daniel F. Dickinson](https://github.com/danielfdickinson) utilise ce thème pour
les sites de démonstration/test des modules sur lesquels il travaille. Pour un
référentiel permettant de créer des cas de test reproductibles minimaux, voir
[la branche v0.3 de ce
référentiel](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/tree/v0.3)
ou [hugo-testing par jmooring à partir des forums
Hugo](https://github.com/jmooring/hugo-testing). Ce cas d'utilisation était
auparavant un objectif de ce référentiel, mais ce n'est plus le cas.

Voir [README](/readme/README.md) aux plusier d'information, et
[LICENSE](../readme/readme/LICENSE) aux autorisations d'utilisation.
