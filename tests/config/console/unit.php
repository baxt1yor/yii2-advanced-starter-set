<?php
/**
 * Application configuration for console unit tests
 */
return yii\helpers\ArrayHelper::merge(
    require(YII_APP_BASE_PATH . '/common/config/base.php'),
    require(YII_APP_BASE_PATH . '/common/config/web.php'),
    require(YII_APP_BASE_PATH . '/frontend/config/base.php'),
    require(YII_APP_BASE_PATH . '/frontend/config/web.php'),
    require(dirname(__DIR__) . '/common/functional.php'),
    require(dirname(__DIR__) . '/base.php'),
    require(dirname(__DIR__) . '/console.php'),
    require(dirname(__DIR__) . '/unit.php')
);