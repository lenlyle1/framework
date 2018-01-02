<?php
 /*----------------------------------------------------------
 |  Authed Routes
 ---------------------------------------------------------*/
$router->addGroup('', function($router){
    $router->add('GET', '/printActionPlan', 'PageController:printActionPlan', 'printactionplan');
    $router->add('GET', '/printSurvey', 'PageController:printSurvey', 'printsurvey');
    $router->add('GET', '/pdfexport', 'PageController:pdfExport', 'pdfexport');
    $router->add( 'GET', '/surveyresults', 'PageController:surveyresults', 'surveyresults' );
})->addMiddleware('before', 'LoggeMiddleware:run');

