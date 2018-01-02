<?php

namespace App\Middleware;

use \Lib\Session\Session;
use \Lib\Debug\Debugger;
use \Lib\Messaging\MessageRunner;
use \Lib\User\User;
use \Lib\Utils\Redirect;

class AuthMiddleware extends Middleware
{
    public static function run()
    {
        global $router;

        Debugger::debug('in auth middleware: ' . $_SERVER['REQUEST_URI']);
        //Debugger::debug($_SESSION);
        if (!Session::get('logged_in')) {
            // must be authed, send back to authed homepage
            MessageRunner::addMessage('notification', 'You must be signed in to access that page.');

            Redirect::go($router->generate('home'));
        } else if((!Session::get('user')->hasPassword || Session::get('user')->username == '') &&
                   $_SERVER['REQUEST_URI'] != '/set-password' &&
                   $_SERVER['REQUEST_URI'] != '/auth/signout' ){
            // user doesn't have password set, force setting
            MessageRunner::addMessage('notification', "Your account doesn't have a password.  Please set it to continue.");

            Redirect::go($router->generate('set-password'));
        } else if(User::can('admin_access', Session::get('permissions')) && $_SERVER['REQUEST_URI'] != '/auth/signout'){
            // Must not be an admin user
            MessageRunner::addMessage('notification', 'You have an admin account and have been redirected');

            Redirect::go($router->generate('admin-dashboard'));
        }
    }

}