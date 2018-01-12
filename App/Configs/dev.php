<?php

$settings = new stdClass;

$settings->sitename = 'Framework';
/*
	Mysql
*/
$settings->db = new stdClass;
$settings->db->host = '127.0.0.1';
$settings->db->name = 'framework_base';
$settings->db->user = 'len';
$settings->db->pass = 'B0ll0cks1';
$settings->db->port = 3306;
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

/**
	Memcached persistence
**/
$settings->cacheTimes = [
	'users' => 20,
	'sites' => 300
];

$settings->restURL = 'http://dev.lightupmylove.com';

$settings->passwordComplexity = 10;