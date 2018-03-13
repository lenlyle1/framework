<?php

namespace Controllers;

use Lib\Smarty\Template;
use Lib\Debug\Debugger;
use Lib\Products\Product;

Class ProductController
{

	 /*----------------------------------------------------------
	 |  Edit page
	 ---------------------------------------------------------*/
	static function list($router, $params)
	{
		$products = Product::loadAll();
		Template::assign('products', $products);

		return 'admin/pages/list-products';
	}
	
	 /*----------------------------------------------------------
	 |  Edit page
	 ---------------------------------------------------------*/
	static function edit($router, $params)
	{		
		print_r($params);
		if(!empty($params['product_id'])){
			$product = Product::load($params['product_id']);
			Template::assign('product', $product);
		}

		return 'admin/pages/edit-product';
	}
	
	 /*----------------------------------------------------------
	 |  Save page
	 ---------------------------------------------------------*/
	static function save($router, $params)
	{		
		$result = Product::save($_POST);

		\Lib\Utils\Redirect::go('/admin/products');
	}
	
	/*----------------------------------------------------------
	|  Delete page
	---------------------------------------------------------*/
	static function delete($router, $params)
	{	

	}
	
	/*----------------------------------------------------------
	|  View page
	---------------------------------------------------------*/
	static function view($router, $params)
	{

	}

}