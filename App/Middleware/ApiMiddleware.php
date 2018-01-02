<?php

namespace App\Middleware;

use \Lib\Debug\Debugger;
use \Lib\API\API;

class ApiMiddleware extends Middleware
{
    public static function authenticate()
    {
        // check for valid authentication
        // if (!$api = new API($_GET['auth_id'], $_GET['auth_public']) {
        //     Debugger::debug('Missing credentials');
        // }
    }

    public static function run()
    {

    }
}