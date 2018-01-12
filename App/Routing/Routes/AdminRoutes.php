<?php

namespace Controllers;

use \Routing\Router;

/** ========================================================
 *  Non-authed routers
 * =======================================================*/
$router->addGroup('/admin', function($router){
    $router->add( 'GET', '/login', 'AdminController:login', 'admin-login' );
    // $router->add( 'GET', '/setup', 'AdminController:siteSetup', 'admin-setup' );
});

// AUTHED ROUTES
$router->addGroup('/admin', function($router){
    $router->add( 'GET', '', 'AdminController:home');
    $router->add( 'GET', '/users', 'AdminController:users', 'admin-users');

    $router->add( 'GET', '/home', 'AdminController:home', 'admin-home' );
    $router->add( 'GET', '/dashboard', 'AdminController:dashboard', 'admin-dashboard' );
    // Role and permission management
    $router->add( 'GET', '/roles', 'AdminController:listRoles', 'admin-list-roles');
    $router->add( 'GET', '/permissions', 'AdminController:listPermissions', 'admin-list-permissions');
    $router->add( 'GET', '/role-permissions', 'AdminController:rolePermissions', 'admin-role-permissions');
    $router->add( 'GET', '/user-roles', 'AdminController:userRoles', 'admin-user-roles');
    $router->add( 'GET', '/translations', 'AdminController:translations', 'admin-translations');
}); //->addMiddleware('before', 'AdminMiddleware:run');

