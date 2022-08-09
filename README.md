# DFD Hugo minimal test theme

## Status

[![build-and-verify](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/actions/workflows/build-and-verify.yml/badge.svg)](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/actions/workflows/build-and-verify.yml)

## Demo website

<https://minimal-test-theme.wildtechgarden.ca/>

## GitHub repository

<https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd>

## Overview

[Daniel F. Dickinson](https://github.com/danielfdickinson), uses this theme for demo/test sites for the modules on which he works. For a repository for creating minimal reproducible test cases see either [the v0.3 branch of this repository](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/tree/v0.3) or [hugo-testing by jmooring from the Hugo forums](https://github.com/jmooring/hugo-testing). That use case was previously a goal of this repository, but such is no longer the case.

See [License](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/blob/main/LICENSE) for permissions on use.

## Modern hugo only

This minimal theme is built using assumptions that may require Hugo 0.80.0 or higher, and in any event those are the only versions on which it has been tested.

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

### Using git submodules (unsupported by theme author)

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

### For accessibility, source code uses tabs

Until recently I was 'spaces over tabs' developer, but I recently read
[a blog post by Bruce Wray about the accessibility argument for tabs over spaces](https://www.brycewray.com/posts/2022/06/accessibility-argument-tabs-spaces/) and followed the links he gave, and the ability of tabs to be handled by braille or screen reader devices (or users who need to zoom their displays) is more than just 'taste' but can in fact be a huge win for 'getting stuff done'. That major sites don't handle tabs well in code blocks is a reflection on poor site design, and should not be excused or catered to.

All it takes is (for example)

``` css
code,
pre {
	tab-size: 3;
}
```

And of course, you can use CSS selectors to override when needed.

## Support and general questions

Please use [GitHub Discussions](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/discussions) for support and general questions.
