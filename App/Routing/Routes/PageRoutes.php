<?php

namespace Controllers;

use \Routing\Router;

/** ========================================================
 *  Non-authed routers
 * =======================================================*/
$router->addGroup('/page', function($router){
    $router->add('GET', '/edit/[*:slug]?', 'PageController:edit', 'page-edit');
    $router->add('POST', '/save', 'PageController:save', 'page-save');
    $router->add('GET', '/[*:slug]', 'PageController:view', 'page-view');
});