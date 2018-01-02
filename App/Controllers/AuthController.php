<?php

namespace Controllers;

use \Lib\Messaging\MessageRunner;
use \Lib\Auth\Auth;
use \Lib\Debug\Debugger;
use \Lib\User\User;
use \Lib\User\UserRole\Permissions;
use \Lib\Session\Session;

class AuthController extends BaseController
{
    static public function signout($router)
    {
        Auth::signout();

        MessageRunner::addMessage('info', 'You have been logged out');

        # Send them to the homepage:
        return ['type' => 'redirect',
                'url' => $router->generate('home')];
    }

    static function signin($router)
    {
        $result = Auth::attempt($_POST['username'], $_POST['password']);

        Debugger::debug($result);

        if (!$result['success']) {
            Session::set('errors', 'We could not log you in with those details, please try again.');

            return ['type' => 'redirect',
                    'url' => $router->generate('home')];
        }

        $user = User::load($result, $result['user_id'])['payload'];


        Session::set('logged_in', true);
        Session::set('user', $user);
        Session::set('language', $user->language_abbr);
        Debugger::debug('LOADING PERMISSIONS');
        Session::set('permissions', Permissions::loadUserPermissions($user));

        // Debugger::debug($_SESSION);

        if (User::can('admin_access', Session::get('permissions'))) {
            $url = $router->generate('admin-dashboard');
        } else {
            $url = $router->generate('dashboard');
        }

        Debugger::debug($url);

        return ['type' => 'redirect',
                'url' => $url];

    }

}
