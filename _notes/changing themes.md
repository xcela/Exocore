---
Title: Changing Themes
---

A few themes have been provided in the standard install:

* Edith - Dark mode, orange highlights
* Xcela - Light mode, blue highlights
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
@import "../_sass/themes/edith";
```

The themes are located in `_sass/themes/`. You can create your own theme with standard css and following the same file naming conventions, or modify the existing themes as needed.

