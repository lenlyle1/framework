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
    $router->add( 'GET', '/home', 'AdminController:home', 'admin-home' );
    $router->add( 'GET', '/dashboard', 'AdminController:dashboard', 'admin-dashboard' );
    // Role and permission management

    $router->add( 'GET', '/users', 'AdminController:listUsers', 'admin-users');
    $router->add( 'GET', '/roles', 'AdminController:listRoles', 'admin-list-roles');
    $router->add( 'GET', '/permissions', 'AdminController:listPermissions', 'admin-list-permissions');
    $router->add( 'GET', '/role-permissions', 'AdminController:rolePermissions', 'admin-role-permissions');
    $router->add( 'GET', '/user-roles', 'AdminController:userRoles', 'admin-user-roles');
    $router->add( 'GET', '/translations', 'AdminController:translations', 'admin-translations');

}); //->addMiddleware('before', 'AdminMiddleware:run');

/** ========================================
 *  CMS endpoints  
=========================================**/
$router->addGroup('/admin/cms', function($router){
    $router->add( 'GET', '', 'PageController:list', 'admin-pages');
    $router->add( 'GET', '/edit/[*:url_name]?', 'PageController:edit', 'admin-page-edit');
    $router->add( 'POST', '/save', 'PageController:save', 'admin-page-save');
    $router->add( 'GET', '/delete/[*:url_name]?', 'PageController:delete', 'admin-page-delete');
});

/** ========================================
 *  Product endpoints  
=========================================**/
$router->addGroup('/admin/products', function($router){
    $router->add('GET', '', 'ProductController:list', 'admin-products');
    $router->add('GET', '/edit/[*:product_id]?', 'ProductController:edit', 'admin-products-edit');
    $router->add('POST', '/save', 'ProductController:save', 'admin-products-save');
    $router->add('GET', '/delete/[*:product_id]?', 'ProductController:delete', 'admin-products-delete');
});