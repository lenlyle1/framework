<?php

/* ------------------------------------------------------------
 |
 |  UserRoutes
 |

 ------------------------------------------------------------*/
use \Routing\Router;

$router->addGroup('/api', function() use ($router){
    //surveys:
    $router->add('GET',  '/fetchsurvey', 'ApiController:fetchSurvey', 'api-fetchsurvey');
    $router->add('POST', '/surveysubmit', 'ApiController:surveySubmit', 'api-surveysubmit');
    $router->add('GET',  '/fetchsurveylist', 'ApiController:fetchSurveyList', 'api-fetchsurveylist');  //fetchSurvey
    $router->add('GET',  '/fetchsurveyDetail', 'ApiController:fetchSurvey', 'api-fetchsurveylistdetail');  //fetchSurvey
    $router->add('POST', '/savehealthareas', 'ApiController:healthAreaSubmit', 'api-healthareasubmit'); //saving health areas after completing a survey.
    //actionPlans
    $router->add('POST', '/fetchactionplan', 'ApiController:fetchActionPlan', 'api-fetchactionplan');
    $router->add('POST', '/fetchactionplanlist', 'ApiController:fetchActionPlanList', 'api-fetchactionplanlist');
    $router->add('POST', '/updateactionplan', 'ApiController:updateActionPlan', 'api-updateactionplan');
    $router->add('POST', '/newactionplan', 'ApiController:newActionPlan', 'api-newactionplan');
    $router->add('POST', '/schedulefollowup', 'ApiController:scheduleFollowup', 'api-schedulefollowup');
    $router->add('POST', '/fetchFollowup', 'ApiController:fetchSingleFollowup', 'api-fetchsinglefollowup');

 //   $router->add('GET', '/populateSurveys', 'ApiController:populateSurveys', 'api-popsurveys');
    $router->add('GET', '/populateActionPlans', 'ApiController:populateActionPlans', 'api-popactionplans');
 //   $router->add('GET', '/fetchgoaltext', 'ApiController:fetchGoalText', 'api-fetchgoaltext');
    $router->add('POST', '/savecustomgoal', 'ApiController:saveCustomGoal', 'api-savecustomgoal');

    // translations
    $router->add('POST', '/update-translation', 'ApiController:updateTranslation');
    $router->add('GET', '/populatemotivation', 'ApiController:populateMotivation', 'api-popmotivation');
    $router->add('GET', '/populatefollowup', 'ApiController:populateFollowup', 'api-popfollowup');

    $router->add('POST', '/setMotiPrompt', 'ApiController:setMotiPrompt');
    $router->add('POST', '/finishAP', 'ApiController:finishActionPlan');


    //health surveys updated to allow resuming surveys.
    $router->add('POST', '/surveyfinalize', 'ApiController:completeSurvey');
    $router->add('POST', '/surveyNewBatch', 'ApiController:surveyNewBatch');
    $router->add('POST', '/surveyGetLastBatch', 'ApiController:surveyLastBatch');
    $router->add('POST', '/setPageNav', 'ApiController:surveySetPage');


    //toggle motivational prompts:
    $router->add('POST', '/startStopPrompt', 'ApiController:startStopPrompt');


})->addMiddleware('before', 'ApiMiddleware:authenticate');

