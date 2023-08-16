# WTG Hugo minimal test theme

## Status

[![pre-commit.ci
status](https://results.pre-commit.ci/badge/github/wildtechgarden/minimal-test-theme-hugo-wtg/main.svg)](https://results.pre-commit.ci/latest/github/wildtechgarden/minimal-test-theme-hugo-wtg/main)

## Demo/sample website

<https://www.minimal-test-theme.wtg-demos.ca/>

## Repository URL

<https://github.com/wildtechgarden/minimal-test-theme-hugo-wtg>

## Overview

[Wild Tech 'Garden'](https://www.wildtechgarden.ca/about/), uses this theme for
demo/sample sites for the modules on which they work. For a repository for
creating minimal reproducible test cases see either [the v0.3 branch of this
repository](https://github.com/wildtechgarden/minimal-test-theme-hugo-wtg/tree/v0.3)
or [hugo-testing by jmooring from the Hugo
forums](https://github.com/jmooring/hugo-testing). That use case was previously
a goal of this repository, but such is no longer true.

See
[LICENSE](https://github.com/wildtechgarden/minimal-test-theme-hugo-wtg/blob/main/LICENSE)
for permissions on use.

## Modern hugo only

This minimal theme is built using assumptions that may require Hugo 0.115.3 or
higher, and in any event those are the only versions on which it has been
tested.

## Available features

### hello-world shortcode

A simple shortcode that emits an HTML paragraph with 'Hello World!'. To use it,
add `{{</* hello-world */>}}` to a **content** file (not template).

### page-assets shortcode

Allows rendering a Hugo resource from the `assets` directory as Markdown. This
is currently used to render this repo's README.md on a page in the exampleSite.

In order to be compliant with [current HTML best practise for h1 elements, which
is to have only one h1 element per
page](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements#multiple_h1_elements_on_one_page),
any H1 elements in the asset are rewritten as H2 elements (because this theme
adds the page title as an H1 element).

### Heading anchor links

Headings within a page have a link to the header id that can be copied by
hovering over the header, and copying the link on the hash (`#`) sign that
appears.

### Built-in link validation

Through the use of the `render-link` and `render-image` hooks, internal links
and image `src` URLs on the site are validated. If 'static' fallback is allowed
only a warning is emitted (since the link may be to a resource handled outside
the Hugo normal content tree), otherwise the build will display an error for
the offending link.

### Gracefully handles an H1 element in content

If a user decides to put the H1 element in the content file rather than
specifying a `Title` in the frontmatter, this theme will display the H1
element as the page title. If there is also a `Title` element specified,
the duplicate title will be surpressed. If there is more than one H1
element, or the H1 does not match the page title, then the H1's will be
converted to H2 elements.

### Provides hooks for more advanced image rendering

Advanced image handling can be done by other modules, if the module
supplies the 'hook' template that this theme's `render-image` hook
expects.

### Provides 'code' checking and CI

This repository includes a number of code quality checking and maintenance
configurations and uses `pre-commit` and other tools for keeping the
codebase in good order.

### Provides hooks for adding image LQIPs

The hooks allow the top of the page's HTML document to add CSS styles
based on code in later parts of the document. (This takes some 'magic').
By doing so we can add things like LQIPs (Low Quality Image Placeholders)
using CSS only (no JavaScript).

The full effect will only be available with the addition of an appropriate
image handling module.

### Demonstrates how to supply translations for entire site

It does this by adding a (poor) French translation to the main English version
of the site. This ensure verifies that providing a translated edition works
correctly.

### Site navigation bar

Provides 'previous/next section', 'previous/next' page, and up a level buttons
on every page. This makes navigation easy.

### CSS and JavaScript hooks

Provides hooks for adding CSS and JavaScript that gets minified, and renamed to
bust cache if the CSS or JavaScript changes.

We divide the CSS into essential and deferrable, but we do not (yet) add
`rel="preload"` to the styles because `preload` is not supported well enough.

### Basic metadata

We specify pages as non-canonical for pages also on another site (and the
real canonical link may be specified, if you wish). By default for this
demo site we make all pages non-canonical.

## Basic usage (as theme)

### Hugo module (preferred)

1. Initialize the Hugo module system: `hugo mod init
	github.com/<your_user>/<your_project>`; (assuming you are using GitHub,
	of course).
2. Import the theme in your `config.toml`

	```ini
	[module]
	[[module.imports]]
	path = "github.com/wildtechgarden/minimal-test-theme-hugo-wtg"
	```

3. Change back to the site directory
4. Get the module

	```sh
	hugo mod get github.com/wildtechgarden/minimal-test-theme-hugo-wtg
	```

5. To test the result, run the local Hugo server

	```sh
	hugo server -b http://localhost:1313/
	```

### Using git submodules (unsupported by theme author)

1. Make a themes directory and switch to it.

	```sh
	mkdir themes
	cd themes
	```

2. In the themes directory, add minimal-test-theme-hugo-wtg as a submodule

	```sh
	git submodule add -f https://github.com/wildtechgarden/minimal-test-theme-hugo-wtg.git
	```

3. Change back to the site directory
4. To test the result, run the local Hugo server

	```sh
	hugo server -t hugo-minimal-test -b http://localhost:1313/
	```

 Enjoy!

## Page and/or site params available

In/via this module

| Param                    | Description                                    |
|--------------------------|------------------------------------------------|
| absLink                  | If true make all Markdown links absolute       |
| addLQIPStyles            | If true parse the LQIP styles from the archives |
| remoteFallback           | Pull resources from remote if link is remote   |
| staticFallback           | If not a resource (static) use the link verbatim |
| isImageLink              | links is for an image not a URL/site           |
| multipleH1ErrorFix       | Fix too many H1's on a page; default false     |
| multipleH1ErrorWarn      | Only warn instead of erroring of too many H1's on a page |
| multipleH1ErrorIgnore    | Surpress warning about too many H1's on a page |
| pageCanonical            | If false the page is not marked as canonical   |
| pagesOldestFirst         | If true list pages from oldest to newest instead of newest to oldest |
| staticFallback           | If true only warn on missing link targets, on the assumption they are 'static' |
| taxCanonical             | Whether to make taxonomies and terms canonical |
| testStylesInclude        | If true adds a very small amount of CSS to improve theme usability. |
| toCanonical              | URL of a the actual canonical page for a give page |
| topLevelClass            | specifies the class(es) to apply to the `<html>` element |

## Test CSS styling

This makes the theme more usable

To enable the styles:

In `config.toml` add

```toml
[params]
	testStylesInclude = true
```

## Getting help, discussing, and/or modifying

* [Support and general questions](docs/SUPPORT.md)
* [Bugs and feature requests](docs/SUPPORT.md)
* [Contributing modifications to the repository](docs/CONTRIBUTING.md)

-------

## Colophon

* [Copyright and licensing](LICENSE)
* [Inspirations, information, and source material](docs/ACKNOWLEDGEMENTS.md)
* [Notes](docs/README-NOTES.md)
