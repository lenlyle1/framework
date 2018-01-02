<?php

namespace Test;

use \Lib\User\User;

class UserCreationTest extends \PHPUnit\Framework\TestCase 
{

	// public function testDbConnection()
	// {
	// 	$result = \Lib\Search\RunSearch::go();

	// 	var_dump($result);
	// }

	public function testUserCreation()
	{
		$params = [
			'username' 	=> 'lenlyle',
			'password' 	=> 'T3mpP4ss',
			'email'		=> 'lenlyle@gmail.com',
			'gender'    => 'm'
		];

		$id = User::save($params);

		var_dump($id);
	}

	protected function tearDown()
    {
		// users
		$user = new UserModel();
		//$this->flushTable($user->table);
    }
}