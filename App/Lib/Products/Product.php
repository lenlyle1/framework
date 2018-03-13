<?php

namespace Lib\Products;

use \Lib\Debug\Debugger;
use \Lib\Database\DbGetter;// use \Models\UserContactInformation;

class Product
{
	static function loadAll()
	{
		$db = DbGetter::getDb();
		$sql = "SELECT * FROM products";

		$products = $db->fetchAll($sql, []);

		return $products;
	}

    static function load($productId)
    {
        $db = DbGetter::getDb();

        $sql = "SELECT * FROM products WHERE product_id = :product_id";
        $product = $db->fetchOne($sql, [':product_id' => $productId]);

        return $product;
    }   

    static function save($params)
    {
        $db = DbGetter::getDb();

        $productParams = [
            ':product_id' => $params['product_id'] ?? '',
            ':name' => $params['name'],
            ':description' => $params['description']
        ];

        Debugger::debug($params);
        
        Debugger::debug($productParams);
        
        $sql = "SET @@global.sql_mode= '';
                INSERT INTO products (
                    product_id,
                    name,
                    description
                ) VALUES (
                    :product_id,
                    :name,
                    :description
                ) ON DUPLICATE KEY UPDATE
                    name = :name,
                    description = :description";

        return $db->insertUpdate($sql, $productParams);
    }

    static function delete($productId)
    {

    }
}