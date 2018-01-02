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


class GroupController extends BaseController
{
    public static function saveGroup($router, $params)
    {
        Debugger::debug($_POST);
        $groupApi = new GroupAPI($_GET['auth_id'], $_GET['auth_public']);

        return $groupApi->save($_POST);
    }

    public static function addUserToGroup($router, $params)
    {
        Debugger::debug($_POST);
        $groupApi = new GroupAPI($_GET['auth_id'], $_GET['auth_public']);

        return $groupApi->addUser($_POST);
    }

    public static function removeUserFromGroup($router, $params)
    {
        Debugger::debug($_POST);
        $groupApi = new GroupAPI($_GET['auth_id'], $_GET['auth_public']);

        return $groupApi->removeUser($_POST);
    }

    public static function addNote($router, $params)
    {
        Debugger::debug($_POST);
        $groupApi = new GroupAPI($_GET['auth_id'], $_GET['auth_public']);

        return $groupApi->addNote($_POST);
    }

    public static function deleteNote($router, $params)
    {
        Debugger::debug($_POST);
        $groupApi = new GroupAPI($_GET['auth_id'], $_GET['auth_public']);

        return $groupApi->deleteNote($_POST);
    }

    public static function saveMessage($router, $params)
    {
        Debugger::debug($_POST);
        $groupApi = new GroupAPI($_GET['auth_id'], $_GET['auth_public']);

        return $groupApi->saveMessage($_POST);
       // die(\Lib\User\Group::saveMessage($_POST));
    }

    public static function deleteMessage($router, $params)
    {
        Debugger::debug($_POST);
        $groupApi = new GroupAPI($_GET['auth_id'], $_GET['auth_public']);

        return $groupApi->deleteMessage($_POST);
       // die(\Lib\User\Group::saveMessage($_POST));
    }

}
