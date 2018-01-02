<?php

define("SITE_ROOT", realpath('./'));

define("IS_LIVE", false);

define("PUBLIC_ROOT", SITE_ROOT . '/public_html/');
define("APP_DIR", SITE_ROOT . '/App');
define("TEMPLATE_DIR", APP_DIR . '/Views');

set_include_path(get_include_path() . PATH_SEPARATOR . realpath(SITE_ROOT . "/App/"));

require __DIR__ . '/vendor/autoload.php';


$configFile = 'Configs/dev.php';
require $configFile;

$db = new Lib\Database\Mysql\DB();
$db->setvar('dbHost', $settings->dbHost);
$db->setvar('dbName', $settings->dbName);
$db->setvar('dbUser', $settings->dbUser);
$db->setvar('dbPass', $settings->dbPass);