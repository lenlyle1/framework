<?php

namespace App\Middleware;

use \Lib\Session\Session;
use \Lib\Debug\Debugger;
use \Lib\Messaging\MessageRunner;
use \Lib\User\User;
use \Lib\Utils\Redirect;

class LoggeMiddleware extends Middleware
{
    public static function run()
    {
        global $router;

        if (!Session::get('logged_in')) {
            // must be authed, send back to authed homepage
            MessageRunner::addMessage('notification', 'You must be signed in to access that page.');


        }
    }

}