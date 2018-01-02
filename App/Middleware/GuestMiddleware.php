<?php

namespace App\Middleware;

use \Lib\Session\Session;
use \Lib\Messaging\MessageRunner;
use \Lib\Debug\Debugger;
use \Lib\Utils\Redirect;

class GuestMiddleware extends Middleware
{
    public static function run()
    {
        global $router;
        Debugger::Debug('in guest middleware : ' . $_SERVER['REQUEST_URI']);
        if (Session::get('logged_in')) {
            Debugger::debug('Logged in, redirect');
            // must be authed, send back to authed homepage
            MessageRunner::addMessage('notification', 'You cannot access that page when logged in');

            Redirect::go($router->generate('dashboard'));
        }
    }
}