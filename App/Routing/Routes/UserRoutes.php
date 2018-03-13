<?php

namespace Controllers;

use \Routing\Router;

/** ========================================================
 *  Non-authed routers
 * =======================================================*/
$router->addGroup('/admin/users', function($router){
    $router->add('GET', '/edit/[*:userId]?', 'AdminController:editUser', 'admin-edit-user');
});