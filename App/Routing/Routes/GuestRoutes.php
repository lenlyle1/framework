<?php
 /*----------------------------------------------------------
 |  Guest Routes
 ---------------------------------------------------------*/
$router->addGroup('', function($router){

    $router->addGroup('/user', function($router){
        // signup
        $router->add( 'GET',  '/signup', 'PageController:signup', 'user.signup-form');
        $router->add( 'POST',  '/signup', 'UserController:signup', 'user.signup');
               // ->addMiddleware('before', 'CsrfMiddleware:authenticate');
    });
    $router->add( 'GET', '/', 'PageController:home', 'home' );
    $router->add( 'GET', '/login', 'PageController:login', 'login' );

    // pasword reset
    $router->add('GET', '/reset-password', 'UserController:passwordResetForm', 'forgot-password');
    $router->add('POST', '/reset-password', 'UserController:passwordReset', 'forgot-password-reset');
    $router->add('GET', '/forgot-password-form', 'UserController:passwordResetRequestForm', 'forgot-password-form');
    $router->add('POST', '/forgot-password-request', 'UserController:submitPasswordResetRequest', 'forgot-password-reset-request');

    $router->add( 'GET', '/login-help', 'PageController:loginHelp', 'login-help' );
})->addMiddleWare('before',  'GuestMiddleware:run');
