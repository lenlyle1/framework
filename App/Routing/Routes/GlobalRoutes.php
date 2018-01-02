<?php
 /*----------------------------------------------------------
 |  Guest Routes
 ---------------------------------------------------------*/
$router->addGroup('', function($router){
    $router->add( 'GET', '/about', 'PageController:about', 'about' );
    $router->add( 'GET', '/faq', 'PageController:faq', 'faq' );
    $router->add( 'GET', '/terms-and-conditions', 'PageController:termsAndConditions', 'terms-and-conditions' );

    $router->add('GET', '/healthContentOnly', 'PageController:healthcontentonly', 'healthcontentonly');

    // change language
    $router->add( 'GET', '/change-language/[*:lang]?', 'PageController:changeLanguage');
});
