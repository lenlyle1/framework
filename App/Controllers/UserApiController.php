<?php

namespace Controllers;

use \Lib\API\UserAPI;
use \Lib\API\RolesAPI;
use \Lib\API\PracticeAPI;
use \Lib\API\GroupAPI;
use \Lib\Debug\Debugger;
use \App\Routing\Router;
use \Lib\Survey\Quizling;
use \Lib\Survey\ActionPlan;


class UserApiController extends BaseController
{
    public static function loadUsers($router, $params)
    {
        $userApi = new UserAPI();

        return $userApi->load();
    }

    public static function loadUser($router, $params)
    {
        Debugger::debug($params);
        //Debugger::debug($router->generate('api-load-user', array('userId' => '1d3ed72a0dcf11e7a4f584ef186498da')));
        $userApi = new UserAPI();

        return $userApi->load($params['userId']);
    }

    public static function saveUser($router, $params)
    {
        $userApi = new UserAPI();

        return $userApi->save($_POST);
    }

    public static function saveUserProfile($router, $params)
    {
        $userApi = new UserAPI();

        return $userApi->saveProfile($_POST);
    }

    public static function loadRoles($router, $params)
    {
        $rolesApi = new RolesAPI();

        return $rolesApi->loadRoles();
    }

    public static function saveRole($router, $params)
    {
        $rolesApi = new RolesAPI();

        return $rolesApi->saveRoles($_POST);
    }

    public static function loadPermissions($router, $params)
    {
        $rolesApi = new RolesAPI();

        return $rolesApi->loadPermissions();
    }

    public static function savePermission($router, $params)
    {
        $rolesApi = new RolesAPI();

        return $rolesApi->savePermission($_POST);
    }

    public static function saveRolePermissions($router, $params)
    {
        $rolesApi = new RolesAPI();

        return $rolesApi->assignPermissions($_POST);
    }

    public static function assignRole($router, $params)
    {
        $rolesApi = new RolesAPI();

        return $rolesApi->assignToUser($_POST);
    }

    public static function loadUserRoles($router, $params)
    {

    }

    public static function loadUserPermissions($router, $params)
    {
        $userApi = new UserAPI();

        return $userApi->loadPermissions();
    }

    public static function importUsers($router, $params)
    {
        $userApi = new UserAPI();

        return $userApi->importUsers($_POST);
    }

}
