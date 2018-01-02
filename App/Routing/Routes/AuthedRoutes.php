<?php
 /*----------------------------------------------------------
 |  Authed Routes
 ---------------------------------------------------------*/
$router->addGroup('', function($router){
    $router->add( 'GET', '/home', 'PageController:authedHome');

    $router->add( 'GET', '/dashboard', 'PageController:dashboard', 'dashboard' );
    $router->add( 'GET', '/healthsurvey', 'PageController:healthsurvey', 'healthsurvey' );
    $router->add( 'GET', '/actionplan', 'PageController:actionplan', 'actionplan' );


    $router->add( 'GET', '/activities', 'PageController:activities', 'activities' );


    $router->add( 'GET', '/moti_update', 'PageController:edit_moti', 'edit_moti' );


    // set password for account
    $router->add('GET', '/set-password', 'PageController:setPassword', 'set-password');
    $router->add('POST', '/set-password', 'PageController:updatePassword', 'update-password');

})->addMiddleware('before', 'AuthMiddleware:run');

