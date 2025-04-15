[![tests](https://github.com/skeemer/ddev-wkhtmltox/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/skeemer/ddev-wkhtmltox/actions/workflows/tests.yml?query=branch%3Amain)
[![last commit](https://img.shields.io/github/last-commit/skeemer/ddev-wkhtmltox)](https://github.com/skeemer/ddev-wkhtmltox/commits)
[![release](https://img.shields.io/github/v/release/skeemer/ddev-wkhtmltox)](https://github.com/skeemer/ddev-wkhtmltox/releases/latest)

# DDEV-WKHTMLTOX

*DEPRECATED*: The wkhtmltopdf project has been set to read-only as of Jan 2023 and the releases project, for distro packages, in Aug 2023. This addon won't work once DDEV switches to Debian Trixie as there probably won't be a build available.

## Intro

This installs wkhtmltopdf and wkhtmltoimage, with patched Qt, into the web service.

Using binaries compiled with patched Qt avoids a lot of fetch errors among other things. More information is available on their [status](https://wkhtmltopdf.org/status.html) page.

## Getting started

For DDEV v1.23.5 or above run

```sh
ddev add-on get skeemer/ddev-wkhtmltox
```

For earlier versions of DDEV run

```sh
ddev get skeemer/ddev-wkhtmltox
```
