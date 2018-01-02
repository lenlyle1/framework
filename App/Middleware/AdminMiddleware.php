<?php

namespace App\Middleware;

use \Lib\Session\Session;
use \Lib\Debug\Debugger;
use \Lib\Messaging\MessageRunner;
use \Lib\User\User;
use \Lib\Utils\Redirect;

class AdminMiddleware extends Middleware
{
    public static function run()
    {
        global $router;

        Debugger::debug('in admin middleware');
        if (!Session::get('logged_in')) {
            // must be authed, send back to authed homepage
            MessageRunner::addMessage('notification', 'You must be signed in to access that page.');

            Redirect::go($router->generate('home'));
        } else if(!User::can('admin_access', Session::get('permissions'))){
            // must have admin access permissi
            MessageRunner::addMessage('notification', 'You are not authorized to access that page.');


            Redirect::go($router->generate('dashboard'));
        }
    }
}