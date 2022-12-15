[![tests](https://github.com/skeemer/ddev-wkhtmltox/actions/workflows/tests.yml/badge.svg)](https://github.com/skeemer/ddev-wkhtmltox/actions/workflows/tests.yml) ![project is maintained](https://img.shields.io/maintenance/yes/2022.svg)

# DDEV-WKHTMLTOX

## Intro

This installs wkhtmltopdf and wkhtmltoimage, with patched Qt, into the web service.

Using binaries compiled with patched Qt avoids a lot of fetch errors among other things. More information is available on their [status](https://wkhtmltopdf.org/status.html) page.

## Getting started

Install the add-on with ddev get skeemer/ddev-wkhtmltox