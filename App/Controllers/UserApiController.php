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
        $userApi = new UserAPI($_GET['auth_id'], $_GET['auth_public']);

        return $userApi->load();
    }

    public static function loadUser($router, $params)
    {
        Debugger::debug($params);
        //Debugger::debug($router->generate('api-load-user', array('userId' => '1d3ed72a0dcf11e7a4f584ef186498da')));
        $userApi = new UserAPI($_GET['auth_id'], $_GET['auth_public']);

        return $userApi->load(null, $params['userId']);
    }

    public static function loadMotivationalPrompt($router, $params)
    {
        $userApi = new UserAPI($_GET['auth_id'], $_GET['auth_public']);

        die($userApi->loadMotivationalPrompt($params['promptId']));
    }

    public static function saveUser($router, $params)
    {
        $userApi = new UserAPI($_GET['auth_id'], $_GET['auth_public']);

        return $userApi->save($_POST);
    }

    public static function saveUserProfile($router, $params)
    {
        $userApi = new UserAPI($_GET['auth_id'], $_GET['auth_public']);

        return $userApi->saveProfile($_POST);
    }

    public static function loadRoles($router, $params)
    {
        $rolesApi = new RolesAPI($_GET['auth_id'], $_GET['auth_public']);

        return $rolesApi->loadRoles();
    }

    public static function saveRole($router, $params)
    {
        $rolesApi = new RolesAPI($_GET['auth_id'], $_GET['auth_public']);

        return $rolesApi->saveRoles($_POST);
    }

    public static function loadPermissions($router, $params)
    {
        $rolesApi = new RolesAPI($_GET['auth_id'], $_GET['auth_public']);

        return $rolesApi->loadPermissions();
    }

    public static function savePermission($router, $params)
    {
        $rolesApi = new RolesAPI($_GET['auth_id'], $_GET['auth_public']);

        return $rolesApi->savePermission($_POST);
    }

    public static function saveRolePermissions($router, $params)
    {
        $rolesApi = new RolesAPI($_GET['auth_id'], $_GET['auth_public']);

        return $rolesApi->assignPermissions($_POST);
    }

    public static function assignRole($router, $params)
    {
        $rolesApi = new RolesAPI($_GET['auth_id'], $_GET['auth_public']);

        return $rolesApi->assignToUser($_POST);
    }

    public static function loadUserRoles($router, $params)
    {

    }

    public static function loadUserPermissions($router, $params)
    {
        $userApi = new UserAPI($_GET['auth_id'], $_GET['auth_public']);

        return $userApi->loadPermissions();
    }

    public static function savePractice($router, $params)
    {
        Debugger::debug($_POST);
        $practiceApi = new PracticeAPI($_GET['auth_id'], $_GET['auth_public']);

        return $practiceApi->savePractice($_POST);
    }

    public static function importUsers($router, $params)
    {
        $userApi = new UserAPI($_GET['auth_id'], $_GET['auth_public']);

        return $userApi->importUsers($_POST);
    }

    public static function deleteCoach($router, $params)
    {
        Debugger::debug('deleting coach');

        $userApi = new UserAPI($_GET['auth_id'], $_GET['auth_public']);

        return $userApi->deleteCoach($_POST['user_id'], $_POST['coach_id'], $_POST['type']);
    }

    public static function loadQuestionsAndAnswers($router, $params)
    {
        $userApi = new UserAPI($_GET['auth_id'], $_GET['auth_public']);

        $answers = $userApi->loadQuestionsAndAnswers($params['batchId']);

        foreach($answers as $k => $answer){
            $answers[$k]->wark = preg_replace('/[\[\]]/', '', $answer->wark);
        }

        \Lib\Smarty\Template::assign('answers', $answers);

        return 'pages/surveyanswers-basic';
    }
}
