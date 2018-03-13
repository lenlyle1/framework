<?php

namespace Controllers;

use \Routing\Router;

/** ========================================================
 *  Non-authed routers
 * =======================================================*/
$router->addGroup('/permissions', function($router){
    $router->add('POST', '/save', 'PermissionConntroller:save', 'permission-save');
    
});