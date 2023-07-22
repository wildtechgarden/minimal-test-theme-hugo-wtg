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

[Daniel F. Dickinson](https://www.danielfdickinson.ca), utilise ce thème
pour les sites de démonstration/échantillons des modules qu'ils sont travaillez.
Pour une référentiel aux créer de cas de test reproductibles minimaux,
regardez [le v0.3 branche de ce
référentiel](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/tree/v0.3)
ou [hugo-testing par jmooring depuis les Hugo
forums](https://github.com/jmooring/hugo-testing). Ce cas d'utilisation était
auparavant une objectif de ce référentiel, mais ce n'est pas vrai, maintenant.

Regardez
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

### Liens d’ancrage d’en-tête

Les titres d’une page ont un lien vers l’ID d’en-tête qui peut être copié par en
survolant l’en-tête et en copiant le lien sur le signe dièse (`#`) apparaît.

### Validation de liaison intégrée

Grâce à l’utilisation des `render-link` et `render-imagesrc` crochets, liens
internes et les URL des images sur le site sont validées. Si la solution de
secours « statique » est autorisée seulment un avertissement est émis (puisque
le lien peut être vers une ressource gérée à l’extérieur l’arborescence de
contenu normale Hugo), sinon la build affichera une erreur pour le lien
incriminé.

### Gère gracieusement un élément H1 dans le contenu

Si un utilisateur décide de placer l’élément H1 dans le fichier de contenu
plutôt que en spécifiant un `Title` dans le front, ce thème affichera le H1
comme titre de page. S’il y a aussi un `Title` élément spécifié, Le titre
en double sera supprimé. S’il y a plus d’un H1, ou le H1 ne correspond pas au
titre de la page, alors le H1 sera converti en éléments H2.

### Fournit des crochets pour un rendu d’image plus avancé

La gestion avancée des images peut être effectuée par d’autres modules, si le
module Fournit le modèle 'hook' que le hook `render-image` de ce thème attend.

### Fournit une vérification du « code » et un CI

Ce référentiel comprend un certain nombre de contrôles de qualité et de
maintenance du codecConfigurations et utilisations `pre-commit` et autres outils
pour conserver le codebase en bon ordre.

### Fournit des crochets pour l’ajout de LQIP d’image

Les crochets permettent au haut du document HTML de la page d’ajouter des styles
CSS basé sur le code des parties ultérieures du document. (Cela prend un peu de
« magie »). Ce faisant, nous pouvons ajouter des éléments tels que les LQIPs
(Low Quality Image Placeholders) en utilisant CSS uniquement (pas de
JavaScript).

Le plein effet ne sera disponible qu’avec l’ajout d’un module de gestion
d’images.

### Montre comment fournir des traductions pour l’ensemble site

Pour ce faire, il ajoute une (mauvaise) traduction française à la version
anglaise principale. du site. Cela garantit que la fourniture d’une édition
traduite fonctionne correctement.

### Barre de navigation du site

Fournit des boutons 'section précédente/suivante', 'précédente/suivante'
et bouton de niveau supérieur sur chaque page. Cela facilite la navigation.

### Hooks CSS et JavaScript

Fournit des hooks pour ajouter CSS et JavaScript qui sont minifiés et renommés
en vider le cache si le CSS ou le JavaScript change.

Nous divisons le CSS en essentiel et différable, mais nous n’ajoutons pas
(encore) `rel="preload"` aux styles car `preload` il n’est pas assez bien
supporté.

### Métadonnées de base

Nous spécifions les pages comme non canoniques pour les pages également sur un
autre site (et le un lien canonique réel peut être spécifié, si vous le
souhaitez). Par défaut pour ce site de démonstration Nous rendons toutes les
pages non canoniques.

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
| absLink                  | Si la valeur est true, rendez tous les liens Markdown absolus |
| addLQIPStyles            | Si true analyse les styles LQIP des archives |
| remoteFallback           | Extraire des ressources à partir de la distance si la liaison est distante |
| staticFallback           | Si ce n’est pas une ressource (statique), utilisez le lien textuellement |
| isImageLink              | lien sont pour une image pas une URL / site |
| multipleH1ErrorFix       | Corrigez trop de H1 sur une page; false par défaut |
| multipleH1ErrorWarn      | Avertir uniquement au lieu d’erreur sur trop de H1 sur une page |
| multipleH1ErrorIgnore    | Avertissement de suppression sur trop de H1 sur une page |
| pageCanonical            | Si la page est fausse, la page n’est pas marquée comme canonique |
| pagesOldestFirst         | Si true répertorie les pages de la plus ancienne à la plus récente au lieu de la plus récente à la plus ancienne |
| staticFallback           | Si true ne met en garde que sur les cibles de chaînon manquant, en supposant qu’elles sont « statiques |
| taxCanonical             | S’il faut rendre les taxonomies et les termes canoniques |
| testStylesInclude        | Si la valeur est `true` ajoute une très petite quantité de CSS pour améliorer la convivialité du thème. |
| toCanonical              | URL d’une page canonique réelle pour une page donnée |
| topLevelClass            | Spécifie la ou les classes à appliquer à l’élément `<html>` |

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
