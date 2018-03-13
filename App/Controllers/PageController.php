<?php

namespace Controllers;

use Lib\Smarty\Template;
use Lib\Debug\Debugger;
use Lib\Pages\Page;

Class PageController
{

	 /*----------------------------------------------------------
	 |  Edit page
	 ---------------------------------------------------------*/
	static function list($router, $params)
	{
		$pages = Page::loadAll();

		Template::assign('pages', $pages);

		return 'admin/pages/list-pages';
	}
	
	 /*----------------------------------------------------------
	 |  Edit page
	 ---------------------------------------------------------*/
	static function edit($router, $params)
	{
		if(!empty($params['url_name'])){
			$page = Page::load($params['url_name']);
			Debugger::debug($page);
			Template::assign('page', $page);
		}

		return 'admin/pages/edit-page';
	}
	
	 /*----------------------------------------------------------
	 |  Save page
	 ---------------------------------------------------------*/
	static function save($router, $params)
	{
		$result = Page::save($_POST);

		\Lib\Utils\Redirect::go('/admin/cms');
	}
	
	/*----------------------------------------------------------
	|  Delete page
	---------------------------------------------------------*/
	static function delete($router, $params)
	{	
		if($params['url_name']){
			$result = Page::delete($params['url_name']);
		} else {
			die(print_r($params['url_name']));
		}

		\Lib\Utils\Redirect::go('/admin/cms');
	}
	
	/*----------------------------------------------------------
	|  View page
	---------------------------------------------------------*/
	static function view($router, $params)
	{
		$page = Page::load($params['slug']);

		return 'pages/page';
	}

	static function home($router, $params)
	{		
		Template::assign('page', Page::load('home'));

		return 'pages/page';
	}

}