# Yii 2 Advanced Starter Set

This is Yii2 start application template.

It was created and developing as a fast start for building an advanced sites based on Yii2.

It covers typical use cases for a new project and will help you not to waste your time doing the same work in every project

## TABLE OF CONTENTS
- [Demo](#demo)
- [Features](#features)
- [Components documentation](docs/components.md)
- [Console commands](docs/console.md)
- [Testing](docs/testing.md)
- [FAQ](docs/faq.md)
- [How to contribute?](#how-to-contribute)
- [Have any questions?](#have-any-questions)

## Installation
1. Clone Repo from https://github.com/ilhomjon-urman/yii2-advanced-starter-set.git
2. composer install 
3. npm install
4. php console/yii app/setup
5. npm run build
6. For Windows OS: Change .../yii2-advanced-starter-set/vendor/yiisoft/yii2/web/AssetManager.php with .../yii2-advanced-starter-set/docs/Windows/AssetManager.php 
7. Go to http://yii2-advanced.loc for Frontend OR http://yii2-advanced.loc/admin for Backend
8. Alternatively You can use "Ready to use" zip file from docs/yii2-advanced-starter-set.zip and restore DB from docs/yii2_advanced_starter_set_db.sql

## FEATURES
### Admin backend
- Beautiful and open source dashboard theme for backend [AdminLTE 3](https://adminlte.io/themes/v3/)
- Content management components: articles, categories, static pages, editable menu, editable carousels, text blocks
- Settings editor. Application settings form (based on KeyStorage component)
- [File manager](https://github.com/MihailDev/yii2-elfinder)
- Users, RBAC management
- Events timeline
- Logs viewer
- System monitoring

### I18N
- Built-in translations:
    - English
    - Spanish
    - Russian
    - Ukrainian
    - Chinese
    - Vietnamese
    - Polish
    - Portuguese (Brazil)
    - Indonesian (Bahasa)
- Language switcher, built-in behavior to choose locale based on browser preferred language
- Backend translations manager

### Users
- Sign in
- Sign up
- Profile editing(avatar, locale, personal data)
- Optional activation by email
- OAuth authorization
- RBAC with predefined `guest`, `user`, `manager` and `administrator` roles
- RBAC migrations support

### Development
- Ready-to-use Docker-based stack (php, nginx, mysql, mailcatcher)
- .env support
- [Webpack](https://webpack.js.org/) build configuration
- Key-value storage service
- Ready to use REST API module
- [File storage component + file upload widget](https://github.com/trntv/yii2-file-kit)
- On-demand thumbnail creation [trntv/yii2-glide](https://github.com/trntv/yii2-glide)
- Built-in queue component [yiisoft/yii2-queue](https://github.com/yiisoft/yii2-queue)
- Command Bus with queued and async tasks support [trntv/yii2-command-bus](https://github.com/trntv/yii2-command-bus)
- `ExtendedMessageController` with ability to replace source code language and migrate messages between message sources
- [Some useful shortcuts](https://github.com/ilhomjon-urman/yii2-advanced-starter-set/master/common/helpers.php)

### Other
- Useful behaviors (GlobalAccessBehavior, CacheInvalidateBehavior)
- Maintenance mode support ([more](#maintenance-mode))
- [Aceeditor widget](https://github.com/trntv/yii2-aceeditor)
- [Datetimepicker widget](https://github.com/trntv/yii2-bootstrap-datetimepicker),
- [Imperavi Reactor Widget](https://github.com/asofter/yii2-imperavi-redactor),
- [Xhprof Debug panel](https://github.com/trntv/yii2-debug-xhprof)
- Sitemap generator
- Extended IDE autocompletion
- Test-ready
- Built-in [mailcatcher](http://mailcatcher.me/)
- [Swagger](https://swagger.io/) for API docs.

## DEMO
- Frontend: [https://yii2-advanced.eh5.ru](https://yii2-advanced.eh5.ru)
- Backend: [https://yii2-advanced.eh5.ru/admin](https://yii2-advanced.eh5.ru/admin)

`administrator` role account
```
Login: webmaster
Password: webmaster
```

`manager` role account
```
Login: manager
Password: manager
```

`user` role account
```
Login: user
Password: user
```

## How to contribute?
You can contribute in any way you want. Any help appreciated, but most of all i need help with docs

## Have any questions?
Mail to [admin@eh5.ru](mailto:admin@eh5.ru)

## READ MORE
- [Yii2](https://github.com/yiisoft/yii2/tree/master/docs)


### NOTE
This template based on Yevhen Terentiev's https://github.com/yii-starter-kit/yii2-starter-kit. 
And was created mostly for developers NOT for end users.
This is a point where you can start your application, rather than creating it from scratch.
Good luck! 


