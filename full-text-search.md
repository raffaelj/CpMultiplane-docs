# Full text search

## Events

### `multiplane.search.before`

Arguments:

```text
$query (array | string)
$list  (ArrayObject)
```

Example:

```php
$app->on('multiplane.search.before', function(&$query, &$list) {

    // censor search terms
    $forbiddenSearchTerms = ['d*ck'];
    if (in_array($query, $forbiddenSearchTerms)) {

        $query = 'duck';
        $list[] = [
            'title'   => 'Why did you search for ducks?',
            'content' => 'There is so much more beautiful content here',
            'weight'  => 9999,
            'url'     => $this->baseUrl('/'),
        ];
    }

    // add easter eggs
    if (mb_strtolower($query) == mb_strtolower('What is the answer to Life, the Universe and Everything?')) {

        $list[] = [
            'title'  => '42',
            'weight' => 9999,
            'url'    => 'https://en.wikipedia.org/wiki/The_Hitchhiker%27s_Guide_to_the_Galaxy_(novel)',
        ];
    }

});
```

### `multiplane.search.after`

Arguments:

```text
$query (array | string)
$list  (ArrayObject)
$sort  (null | callable)
```

By default, found entries are sorted by weight.

```php
$sort = function($a, $b) {return $a['weight'] < $b['weight'];};
$list->uasort($sort);
```

Example:


```php
$app->on('multiplane.search.after', function($query, $list, &$sort) {
    // sort by creation date
    $sort = function($a, $b) {return $a['_created'] < $b['_created'];};
});
```

## Config

config.yaml example for granular settings with multiple collections in search results:

```yaml
multiplane:
  search:
    enabled: true
    collections:
      pages:
        label: Pages
        weight: 10
        fields:
          - name: title
            weight: 10
          - name: content
            type: markdown
            display: false
      posts:
        label: Blog
        weight: 5
        fields:
          - name: title
            weight: 8
          - name: content
            type: markdown
            display: false
      calendar:
        label: Dates
        weight: 3
        fields:
          - name: title
            weight: 8
          - name: content
            type: wysiwyg
```
