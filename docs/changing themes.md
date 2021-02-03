---
Title: Changing Themes
layout: post
---

A few themes have been provided in the standard install:

* Yotsuba - Purple, light
* Edith - Black & Orange, dark
* Xcela - white & Blue, light
* Redstate - white & red, light
* Erowid - Purple, dark
* Gemini - Dark mode, monospace

## Theme Gallery

Gallery 

## Changing Themes

Themes can be changed by editing the third item in `styles.scss` in the root folder to the theme of your chose.

By default it should look like:
```---
---

@import "../_sass/normalize";
@import "../_sass/code";
@import "../_sass/themes/yotsuba";
```

You can simply change `yotsuba` to `edith` `xcela` `erowid` `gemini` or `redstate`.

## Creating/Modifying themes

Themes are located in `_sass/themes/`. You can create your own theme with standard css and following the same file naming conventions, or modify the existing themes as needed.

Note, if there is an error in the css the site will fail to build and not be updated. You can goto your netlify dashboard and see the deploy log. There will be a `conversion error` that will usually point to the line in the code that failed for troubleshooting.

---

More information on [[Site customization]]