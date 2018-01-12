<?php

namespace Controllers;

use Lib\Smarty\Template;
use Lib\Utils\Debugger;
use Lib\Pages\Page;

Class PageController
{

	 /*----------------------------------------------------------
	 |  Edit page
	 ---------------------------------------------------------*/
	static function edit($router, $params)
	{
		$page = Page::load($params['slug']);

		
		//return 'pages/home';
	}
	
	 /*----------------------------------------------------------
	 |  Save page
	 ---------------------------------------------------------*/
	static function save($router, $params)
	{
		//return 'pages/signup';
	}
	
	 /*----------------------------------------------------------
	 |  View page
	 ---------------------------------------------------------*/
	static function view($router, $params)
	{
		$page = Page::load($params['slug']);


;		return 'pages/page';
	}

}