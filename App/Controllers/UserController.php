<?php

namespace Controllers;

use Lib\User\UserOperations as UserOp;
use Lib\Utils\Template;
use Lib\Utils\Debugger;
use Models\User;
use Lib\User\Signup;

Class UserController 
{
	static function showDetails($vars)
	{
		$user = new UserOp();
		$userDetails = $user->load($vars['id']);

		Template::assign('user', $userDetails);
		return 'user/view';
	}
	
	static function signup()
	{
		return 'pages/signup';
	}
	
	static function processSignup()
	{
		$params = [
			'username' 	=> $_POST['username'],
			'password' 	=> $_POST['password'],
			'email'		=> $_POST['email'],
			'gender'    => $_POST['username']
		];

        $user = new User();
		$response = $user->save($params);


		die(json_encode($response));
	}
	
	static function listFavourites()
	{

	}

	static function addFavourite()
	{

	}

	static function deleteFavourite()
	{

	}


}