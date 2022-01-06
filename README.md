# DFD Hugo Minimal Test Theme Component

## Status
TBD

## Overview

This theme is not intended to be used as a normal theme. It is intended as a framework for creating minimal reproducible test cases. As such, one does not simply drop it in a site, but rather creates a repository specifically designed to isolate and demonstrate the issue one is facing.

The goal is to minimize the amount of 'layout grunt work' one has to do to create the test case.

See [License](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/blob/master/LICENSE) for permissions on use.

## Modern Hugo Only

This minimal theme is built using assumptions that may require Hugo 0.80.0 or higher, and in any event those are the only versions on which it has been tested, at present.

## Available Features

### hello-world Shortcode

A simple shortcode that emits an HTML paragraph with 'Hello World!'. To use it,
add ``{{\< hello-world>}}`` to a **content** file (not template).

## Usage

### From Scratch

1. Create a test case site, or clone a site with no additional layouts, and switch to it
   ```
   git clone https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd.git
   cd minimal-test-theme-hugo-dfd/exampleSite
   ```
### Theme, Adding This Hugo Module (preferred)

1. Initialize the Hugo module system: ``hugo mod init github.com/<your_user>/<your_project>`` (assuming you are using github, of course).
2. Import the theme in your ``config.toml``
   ```
   [module]
     [[module.imports]]
        path = "github.com/danielfdickinson/minimal-test-theme-hugo-dfd"
   ```
3. Change back to the site directory
4. Get the module
   ```
   hugo mod get github.com/danielfdickinson/minimal-test-theme-hugo-dfd
   ```
5. To test the result, run the local Hugo server
   ```
   hugo server -b http://localhost:1313/
   ```
### Using downloaded copy of the theme component (e.g. Zip from the Git repo)

1. Make a themes directory and switch to it
   ```
   mkdir themes
   cd themes
   ```

2. Obtain a copy of the theme e.g. ([a theme Zip file from the Git repo](https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd/archive/refs/heads/main.zip))
3. Copy/extract the theme into minimal-test-theme-hugo-dfd in the themes directory
4. Change back to the site directory
5. To test the result, run the local Hugo server
   ```
   hugo server -t minimal-test-theme-hugo -b http://localhost:1313/
   ```
### Using git submodules (deprecated)

1. Make a themes directory and switch to it.
   ```
   mkdir themes
   cd themes
   ```

2. In the themes directory, add minimal-test-theme-hugo-dfd as a submodule
   ```
   git submodule add -f https://github.com/danielfdickinson/minimal-test-theme-hugo-dfd.git
   ```
3. Change back to the site directory
4. To test the result, run the local Hugo server
   ```
   hugo server -t hugo-minimal-test -b http://localhost:1313/
   ```

 Enjoy!

| Param                    | Description                                    |
|--------------------------|------------------------------------------------|
| showTopBar               | If false, do not show top menu bar             |
| testStylesInclude        | If true adds old browser warning because the offending styles are also enabled (see below). |

## Test CSS Styling

This makes the 'theme' more usable

To enable the styles:

In ``config.toml`` add

```toml
[params]
     testStylesInclude = true
```
### For the theme itself

| Class                       | Description                                 |
|-----------------------------|---------------------------------------------|
| test-min-warningold         | Indicates warning about old browser         |
