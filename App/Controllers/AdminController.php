<?php

namespace Controllers;

use \Lib\Smarty\Template;
use \Lib\Debug\Debugger;
use \Lib\User\User;
use \Lib\Roles\Roles;
use \Lib\Utils\Timezone;
use \Models\Roles AS RolesModel;
use \Models\RolePermissions;

Class AdminController 
{
	static function login()
	{
		return 'admin/pages/login';
	}

	static function home($vars)
	{
		return 'admin/pages/home';
	}

	static function users()
	{
        Template::assign('roles', Roles::load());
		Template::assign('users', User::loadAll());
		Debugger::debug(User::loadAll());
		return 'admin/pages/user_list';
	}

	static function editUser($router, $params)
	{
		if(!empty($params['userId'])){
			Template::assign('user', User::load($params['userId'])['payload']);
		}

		Template::assign('tzList', Timezone::load());
        Template::assign('roles', Roles::load());

		return 'admin/pages/partials/edit_user';
	}

	static function listRoles()
	{
        $roleModel = new RolesModel();
        Template::assign('roles', $roleModel->getAll());

        return 'admin/pages/roles';
	}

	static function rolePermissions()
	{
		$rolePermissions = Roles::loadPermissions(1);

		return 'admin/pages/role-permissions';
	}

	static function cms()
	{
		
	}
}