# Adjust settings

There are multiple ways to adjust the settings.

to do...

If you change some settings and your page doesn't update, clear your cache in *Settings --> System --> Cache --> click trash icon* or just call `/cockpit/call/cockpit/clearCache?acl=qwe` while you are logged in and have cockpit manage rights.

Create a folder `config` in the root (`MP_DOCS_ROOT`) of your web project with a file `bootstrap.php`.

## Hard coded navigation

The inbuilt function `getNav()` looks at the database for all pages with a specified navigation type (currently only `main` and `footer`). If you want to skip this database request, add a hard coded navigation to `MP_DOCS_ROOT/config/bootstrap.php`.

```php
mp()->nav = [
    'main' => [
        [
        'title' => 'About Me',
        'slug' => '/about-me',
        'active' => $app['route'] == '/about-me',
        ],
        [
        'title' => 'Contact',
        'slug' => '/contact',
        'active' => $app['route'] == '/contact',
        ],
    ],
    'footer' => [
        [
        'title' => 'Imprint',
        'slug' => '/imprint',
        'active' => $app['route'] == '/imprint',
        ],
    ],
];
```
