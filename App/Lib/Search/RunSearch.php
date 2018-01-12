<?php

namespace Lib\Search;

use Lib\DB\Mysql;

Class RunSearch
{
	public static function go()
	{
		global $memc;

		$sql = "SELECT u.id, u.username, i.image_url as image, i.thumbnail
				FROM users AS u
				LEFT JOIN user_images i
					ON u.id = i.user_id
				LIMIT 0, 9";

		//$results = $memc->fetch($sql, array(), 'fetchAll', 0);
		$results = Mysql::fetchAll($sql, array());
		
		return $results;
	}
}