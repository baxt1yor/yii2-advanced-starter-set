# INSTALLATION

## TABLE OF CONTENTS
- [Before you begin](#before-you-begin)
- [Manual installation](#manual-installation)
    - [Requirements](#requirements)
    - [Setup application](#setup-application)
    - [Configure your web server](#configure-your-web-server)

- [Single domain installtion](#single-domain-installation)
- [Demo users](#demo-users)


## Before you begin
1. If you do not have [Composer](http://getcomposer.org/), you may install it by following the instructions 
   at [getcomposer.org](http://getcomposer.org/doc/00-intro.md#installation-nix).
2. Install [NPM](https://docs.npmjs.com/getting-started/installing-node) to build frontend code

## Clone repository
```
git clone https://github.com/ilhomjon-urman/yii2-advanced-starter-set.git
```

## Install dependencies
```
composer install
npm install
```

## Manual installation

### REQUIREMENTS
The minimum requirement by this application template that your Web server supports PHP 7.
Required PHP extensions:
- intl
- gd
- com_dotnet (for Windows)

### Setup application
2. Adjust settings in `.env` file
	- Set debug mode and your current environment
	```
	YII_DEBUG   = true
	YII_ENV     = dev
	```
	- Set DB configuration
	```
	DB_DSN           = mysql:host=127.0.0.1;port=3306;dbname=yii2-starter-kit
	DB_USERNAME      = user
	DB_PASSWORD      = password
	```

	- Set application canonical urls
	```
	FRONTEND_HOST_INFO    = http://yii2-advanced.loc
	BACKEND_HOST_INFO     = http://backend.yii2-advanced.loc
	STORAGE_HOST_INFP     = http://storage.yii2-advanced.loc
	```

3. Run 

```
php console/yii app/setup
npm run build
```

## Demo data

## Add Random Articles Data

You can insert random article data by running the following command:

```
console/yii app/demo-data N
```

Where `N` is the number of categories and articles to be added to the database. Defaults to `30`.


### Demo Users
```
Login: webmaster
Password: webmaster

Login: manager
Password: manager

Login: user
Password: user
```

## Single domain installation
1. Setup application
Adjust settings in `.env` file

```
FRONTEND_BASE_URL   = /
BACKEND_BASE_URL    = /backend/web
STORAGE_BASE_URL    = /storage/web
```

2. Adjust settings in `backend/config/web.php` file
```
    ...
    'components'=>[
        ...
        'request' => [
            'baseUrl' => '/admin',
        ...
```
3. Adjust settings in `frontend/config/web.php` file
```
    ...
    'components'=>[
        ...
        'request' => [
            'baseUrl' => '',
        ...
```

4. Configure your web server
Example of single domain config for nginx can be found [here](https://github.com/ilhomjon-urman/yii2-advanced-starter-set/docs/vhost_single_domain.conf)

