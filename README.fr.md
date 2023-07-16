# Thème de test minimal DFD Hugo

## Statut

[![Netlify
Statut](https://api.netlify.com/api/v1/badges/6be917c6-f8af-441e-8dc1-a5caf7110dcc/deploy-status)](https://app.netlify.com/sites/minimal-test-theme/deploys)
[![pre-commit.ci
statut](https://results.pre-commit.ci/badge/github/danielfdickinson/minimal-test-theme-hugo-dfd/main.svg)](https://results.pre-commit.ci/latest/github/danielfdickinson/minimal-test-theme-hugo-dfd/main)

## Site de démonstration/exemple

<https://minimal-test-theme.demo.wildtechgarden.ca/>

## URL du référentiel

<https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd>

## Préface

[Daniel F. Dickinson](https://github.com/danielfdickinson), utilise ce thème
pour les sites de démonstration/échantillons des modules qu'ils sont travaillez.
Pour une référentiel aux créer de cas de test reproductibles minimaux,
regardez [le v0.3 branche de ce
référentiel](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/tree/v0.3)
ou [hugo-testing par jmooring depuis les Hugo
forums](https://github.com/jmooring/hugo-testing). Ce cas d'utilisation était
auparavant une objectif de ce référentiel, mais ce n'est pas vrai, maintenant.

Regardez-vou
[LICENSE](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/blob/main/LICENSE)
pour autorisations d'utilisation.

## Hugo moderne seulment

Ce thème minimal est construit à l'aide d'hypothèses qui peuvent nécessiter
Hugo 0.115.3 ou supérieur, et en tout cas ce sont les seules version sur
lesquelles il a été vérifié.

## Fonctionnalités disponibles

### Shortcode `hello-world`

Un shortcode simple qui émet un paragraphe HTML with 'Hello World!'. L'utiliser,
ajoutez aux fichier de contenu (pas le modèle),
`{{</*hello-world*/>}}`.

### Shortcode `page-assets`

Permet le rendu d’une ressource Hugo à partir du répertoire `assets` en tant que
Markdown. Ceci est actuellement utilisé pour affichage les README.md de ce
référentiel sur une page du site

Afin d’être conforme aux [meilleures pratiques HTML actuelles pour les éléments
h1, qui est de n’avoir qu’un seul élément h1 par
page](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements#multiple_h1_elements_on_one_page),
tous les éléments H1 de la ressource sont réécrits en tant qu’éléments H2 (car
ce thème ajoute le titre de la page en tant qu’élément H1).

## Utilisation de base (comme thème)

### Module Hugo (préféré)

1. Initialisez le système de modules Hugo: `hugo mod init
	github.com/<votre_user>/<votre_project>`; (en supposant que vous utilisez
	GitHub, bien sûr).
2. Importez le thème dans votre `config.toml`

	```ini
	[module]
	[[module.imports]]
	path = "github.com/danielfdickinson/minimal-test-theme-hugo-dfd"
	```

3. Revenu à l'annuaire du site
4. Obtenez le module

	```sh
	hugo mod get github.com/danielfdickinson/minimal-test-theme-hugo-dfd
	```

5. Aux faire vérifier le résultat, exécutez le serveur Hugo local

	```sh
	hugo server -b http://localhost:1313/
	```

### Utilisation `git submodule` (ne pris en charge)

1. Créez-vous un répertoire de `themes` et basculez-y.

	```sh
	mkdir themes
	cd themes
	```

2. Dans le répertoire themes, ajoutez `minimal-test-theme-hugo-dfd` en tant
'submodule'

	```sh
	git submodule add -f https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd.git
	```

3. Revenir à l’annuaire du site
4. Pour tester le résultat, exécutez le serveur Hugo local

	```sh
	hugo server -t hugo-minimal-test -b http://localhost:1313/
	```

Jouir!

## Paramètres de page et/ou de site disponibles

Dans/par cette module

| Param                    | Description                                    |
|--------------------------|------------------------------------------------|
| showTopBar               | Si la valeur est `false`, n’affichez pas la barre de menus supérieure |
| testStylesInclude        | Si la valeur est `true` ajoute une très petite quantité de CSS pour améliorer la convivialité du thème. |

## Le style CSS aux tester

Cela rend le thème plus utilisable

Pour activer les styles:

Dans `config.toml` ajouter

```toml
[params]
	testStylesInclude = true
```

## Obtenir de l'aide, discuter et/ou modifier

* [Support et questions générales](docs/SUPPORT.md)
* [Bugs et demande de fonctionnalités](docs/SUPPORT.md)
* [Apporter des modifications au référentiel](docs/CONTRIBUTING.md)

-------

## Colophon

* [Droit d'auteur et license](LICENSE)
* [Inspirations, informations, et matériel source](docs/ACKNOWLEDGEMENTS.md)
* [Notes](docs/README-NOTES.md)
