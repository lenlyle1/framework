<?php

namespace App\Middleware;

use \Lib\Debug\Debugger;
use \Lib\Utils\CSRF;
use \Lib\Messaging\MessageRunner;
use \Lib\Session\Session;

class CsrfMiddleware extends Middleware
{
    public static function authenticate()
    {
        Debugger::debug('IN CsrfMiddleware');
        // check for valid authentication
        if (!CSRF::validateToken($_POST['csrf_name'], $_POST['csrf_name'])) {
            MessageRunner::addMessage('flash', 'Failed CSRF check');

           // \Lib\Utils\Redirect::go($_SERVER['HTTP_REFERER']);
        }


    }
}