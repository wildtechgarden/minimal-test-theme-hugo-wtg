# DFD Hugo minimal test theme

## Status

[![build-and-verify](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/actions/workflows/build-and-verify.yml/badge.svg)](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/actions/workflows/build-and-verify.yml) [![weekly-external-link-check](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/actions/workflows/weekly-external-link-check.yml/badge.svg)](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/actions/workflows/weekly-external-link-check.yml)

## Demo website

<https://minimal-test-theme.wildtechgarden.ca/>

## GitHub repository

<https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd>

## Overview

This theme is mostly not intended to be used as a normal theme. It is intended as a framework for creating minimal reproducible test cases. As such, one does not simply drop it in a site, but rather creates a repository specifically designed to isolate and demonstrate the issue one is facing.

The goal is to minimize the amount of 'layout grunt work' one has to do to create the test case.

[Daniel F. Dickinson](https://github.com/danielfdickinson), however does use this for demo sites for the modules on which he works.

See [License](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/blob/master/LICENSE) for permissions on use.

## Modern hugo only

This minimal theme is built using assumptions that may require Hugo 0.80.0 or higher, and in any event those are the only versions on which it has been tested, at present.

## Available features

### hello-world shortcode

A simple shortcode that emits an HTML paragraph with 'Hello World!'. To use it,
add `{{`&lt; `hello-world` &gt;`}}` to a **content** file (not template).

### page-assets shortcode

Allows rendering a Hugo resource from the `assets` directory as Markdown. This is currently used to render this repo's README.md on a page in the exampleSite.

In order to be compliant with [current HTML best practise for h1 elements, which is to have only one h1 element per page](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements#multiple_h1_elements_on_one_page), any H1 elements in the asset are rewritten as H2 elements (because this theme adds the page title as an H1 element).

## Basic usage (as theme)

### Hugo module (preferred)

1. Initialize the Hugo module system: `hugo mod init github.com/<your_user>/<your_project>`; (assuming you are using GitHub, of course).
2. Import the theme in your `config.toml`

   ```ini
   [module]
     [[module.imports]]
        path = "github.com/danielfdickinson/minimal-test-theme-hugo-dfd"
   ```

3. Change back to the site directory
4. Get the module

   ```sh
   hugo mod get github.com/danielfdickinson/minimal-test-theme-hugo-dfd
   ```

5. To test the result, run the local Hugo server

   ```sh
   hugo server -b http://localhost:1313/
   ```

### Using downloaded copy of the theme component

E.g. ZIP from git repo

1. Make a themes directory and switch to it

   ```sh
   mkdir themes
   cd themes
   ```

2. Obtain a copy of the theme e.g. ([a theme Zip file from the Git repo](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/archive/refs/heads/main.zip))
3. Copy/extract the theme into minimal-test-theme-hugo-dfd in the themes directory
4. Change back to the site directory
5. To test the result, run the local Hugo server

   ```sh
   hugo server -t minimal-test-theme-hugo -b http://localhost:1313/
   ```

### Using git submodules (deprecated)

1. Make a themes directory and switch to it.

   ```sh
   mkdir themes
   cd themes
   ```

2. In the themes directory, add minimal-test-theme-hugo-dfd as a submodule

   ```sh
   git submodule add -f https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd.git
   ```

3. Change back to the site directory
4. To test the result, run the local Hugo server

   ```sh
   hugo server -t hugo-minimal-test -b http://localhost:1313/
   ```

 Enjoy!

## Use to create a minimal(ish) reproducible test case

1. To create a test case site (Linux)

   ```sh
   git clone https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd.git
   cp -r minimal-test-theme-hugo-dfd/exampleSite a-minimal-reproducible-test-case
   cd a-minimal-reproducible-test-case
   git init
   git remote add origin <URL-of-and-empty-repo-you-created-for-this-test-case>
   git push origin main
   ```

2. Now modify the exampleSite by adding/modifying content and layouts to reproduce you issue
3. Commit your changes and push to the repo
4. Create a post on the [Hugo Forum](https://discourse.gohugo.io) describing your issue and provide a link to the repo you just pushed.
5. Hopefully someone can help!

## Page and/or site params available

In/via this module

| Param                    | Description                                    |
|--------------------------|------------------------------------------------|
| showTopBar               | If false, do not show top menu bar             |
| testStylesInclude        | If true adds a very small amount of CSS to improve theme usability. |

## Test CSS styling

This makes the 'theme' more usable

To enable the styles:

In `config.toml` add

```toml
[params]
     testStylesInclude = true
```

## Contributions welcome

If [your issues can't be found when searching both open and closed issues](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/issues?q=is%3Aissue), please add it!

Please [check open issues on danielfdickinson/minimal-test-theme-hugo-dfd](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/issues)
for enhancements and bugs that you would like resolved, write the fix, and submit a PR!

Adding and improving documention is always handy as well.

## Support and general questions

Please use [GitHub Discussions](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/discussions) for support and general questions.
