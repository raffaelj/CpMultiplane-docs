# CpMultiplane docs

Documentation of [CpMultiplane][2], the small PHP front end for the fast and headless [Cockpit CMS][1].

Writing the docs needs a lot of time, especially for all the edge cases with multiple sub page collections and multilingual setups. I try, to keep it up to date, but I do most the work in my spare time. Feel free to ask questions in the issues section.

Currently (2019-10-19) I focus on writing missing (basic) features and cleaning up the code. Sometimes I have to restructure parts of the code. You should always read the [CHANGELOG][3] before you update to a later version.

## To do (docs)

* [ ] example(s) with addons and default templates (rljbase theme)
* [ ] example(s) with addons and default templates (rljstripes theme)
* [ ] How to create a child theme
* [ ] events
* [ ] settings
* [ ] ...


## To do (CpMultiplane and CpMultiplaneGUI)

* [ ] cleaner structure for pages and sub pages
* [x] Sitemap
* [ ] SEO field
* different content field types
  * [ ] Layout
  * [ ] Set
  * [x] Repeater (experimental, rljstrips theme)
* [ ] rss feed
* full-text search
  * [x] special chars in wysiwyg (ä = &auml;...) --> rljUtils addon
  * [ ] fix interference, if field names are 'url', 'collection' or 'weight'
  * [ ] search method AND - currently only OR
  * [ ] advanced search
  * [ ] snippet view
* [ ] category/tag pages
* [ ] excerpt field - take content from content field
* [x] multi level drop down menu (touch device friendly)
* [ ] static (or pseudo static) output
* [ ] ...


[1]: https://github.com/agentejo/cockpit/
[2]: https://github.com/raffaelj/cockpit_CpMultiplane
[3]: https://github.com/raffaelj/CpMultiplane/blob/master/CHANGELOG.md
