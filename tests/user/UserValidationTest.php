<?php

namespace Test;

use Models\User as UserModel;
use Lib\User\Validate;

class UserValidationTest extends \PHPUnit_Framework_TestCase 
{

	public function testEmailValidationFail()
	{
		$email = 'lenlyle@gmail';

		$result = Validate::validateEmail($email);

		$this->assertFalse($result);
	}

	public function testEmailValidation()
	{
		$email = 'lenlyle@gmail.com';

		$result = Validate::validateEmail($email);

		$this->assertTrue($result);
	}
	
	public function testUsernameValidationFail()
	{
		$username = 'lenlyle';

		$result = Validate::validateUsername($username);

		$this->assertFalse($result);
	}

	public function testUsernameValidation()
	{
		$username = 'lenlyle72';

		$result = Validate::validateUsername($username);

		$this->assertTrue($result);
	}
	
	public function testPasswordValidationFail()
	{
		$password = 'badpass';

		$result = Validate::validatePassword($password);

		$this->assertFalse($result);
	}

	public function testPasswordValidation()
	{
		$password = 'G00dP4ss';

		$result = Validate::validatePassword($password);

		$this->assertTrue($result);
	}

	public function testUserCreation()
	{

	}
}