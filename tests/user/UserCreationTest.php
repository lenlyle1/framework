<?php

namespace Test;

use Models\User as UserModel;
use Lib\User\Validate;
use Lib\User\UserOperations as User;

class UserCreationTest extends \PHPUnit_Framework_TestCase 
{

	use \Lib\Seeding\Traits\FlushTable;

	public function testDbConnection()
	{
		$result = \Lib\Search\RunSearch::go();

		var_dump($result);
	}

	public function testUserCreation()
	{
		$params = [
			'username' 	=> 'lenlyle',
			'password' 	=> 'T3mpP4ss',
			'email'		=> 'lenlyle@gmail.com',
			'gender'    => 'm'
		];

		$id = User::create($params);

		var_dump($id);
	}

	protected function tearDown()
    {
		// users
		$user = new UserModel();
		//$this->flushTable($user->table);
    }
}