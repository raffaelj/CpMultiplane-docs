# Quickstart

@since 0.2.0

A preconfigured installation says more than thousand words. So now there are three templates to help you getting started. They are located at `/modules/Multiplane/themes/rljbase/templates`.

Have a look at `<template name>/template.php` to see a list of addons, that will be installed during quickstart.

You can copy and paste the template files manually or use the quickstart cli command.

## shell/cli

```bash
# navigate into your docs root
cd ~/html
```

Copy CpMultiplane and Cockpit via `git clone ...` or `wget ... && unzip ...` or via SFTP.

```bash
# for simplicity and for an easy update procedure - clone CpMultiplane and Cockpit
git clone https://github.com/raffaelj/CpMultiplane.git .
git clone https://github.com/agentejo/cockpit.git cockpit
```

```bash
# copy .htaccess.dist to .htacces
# create admin user with password admin
# copy config and storage templates
# install addons
# enable content preview
./mp multiplane/quickstart --template full

# load i18n files for Cockpit and for tinyMCE (wysiwyg editor)
./mp multiplane/load-i18n

# Create dummy content
# Pages are generated from README.md files of installed addons
# add CpMultiplane logo as asset and use it as site logo
./mp multiplane/create-dummy-data
```

To undo all the changes, run `./mp multiplane/purge`. This will delete addons, databases and definition files in the storage folder. So be careful and never run this command by accident.

## templates

### minimal

* single language
* one collection for pages and posts
* a singleton for site config
* theme: rljbase
* content type: wysiwyg
* database: SQLite
* addons:
    * CpMultiplaneGUI
    * UniqueSlugs

### basic

* single language
* one collection for pages
* one collection for posts
* a singleton for site config
* a contact form
* theme: rljbase
* content type: wysiwyg
* with seo field
* database: SQLite
* addons:
    * CpMultiplaneGUI
    * UniqueSlugs
    * EditorFormats
    * FormValidation
    * rljUtils

### full

* 3 languages (en, de, fr)
* one collection for pages
* one collection for posts
* a contact form
* a singleton for site config
* theme: rljstripes
* content type: repeater
* with seo field
* database: SQLite
* addons:
    * CpMultiplaneGUI
    * UniqueSlugs
    * EditorFormats
    * FormValidation
    * ImageResize
    * VideoLinkField
    * rljUtils
