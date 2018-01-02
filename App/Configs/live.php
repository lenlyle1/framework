<?php

$settings = new stdClass;

/*
	Mysql
*/
$settings->dbHost = '127.0.0.1';
$settings->dbName = 'lightupmylove';
$settings->dbUser = 'root';
$settings->dbPass = 'Scr0tums';

/*
	validation
*/
$settings->validation = array();
$settings->validation['user'] = array(
	'usernameLength' => 6,
	'passwordLength' => 8,
	'usernameMaxLen' => 20,
	'passwordMaxLen' => 20
);
/*
	Memcache
*/
$settings->memc_server = '127.0.0.1';
$settings->memc_port = 11211;

/*
	Script compression
*/
$settings->compressJS = true;
$settings->compressCSS = true;
$settings->cssStack = array();
$settings->jsStack = array();

$settings->swearwords = array(
	'fuck',
	'fucking',
	'cock',
	'arse',
	'cunt',
	'motherfucker'
);

$setting->restURL = 'http://www.lightupmylove.com';
