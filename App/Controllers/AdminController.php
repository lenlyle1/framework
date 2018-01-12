<?php

namespace Controllers;

use Lib\Smarty\Template;
use Lib\Utils\Debugger;
use Lib\User\User;
use \Lib\User\UserRole\Roles;
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
        $roleModel = new RolesModel();
        Template::assign('roles', $roleModel->getAll());
		Template::assign('users', User::loadAll());
		return 'admin/pages/user_list';
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
}