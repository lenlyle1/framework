<?php

/* ------------------------------------------------------------
 |
 |  UserRoutes
 |

 ------------------------------------------------------------*/

use \Routing\Router;

$router->addGroup('/api', function() use ($router){
    // load users
    $router->add('GET', '/user/[*:userId]?', 'UserApiController:loadUser', 'api-load-user');
    // save user
    $router->add('POST', '/user', 'UserApiController:saveUser', 'api-save-user');
    // save user profile
    $router->add('POST', '/user-profile', 'UserApiController:saveUserProfile', 'api-save-user-profile');
    // load roles
    $router->add('GET', '/roles/[*:roleId]?', 'UserApiController:loadRoles', 'api-load-roles');
    // save roles
    $router->add('POST', '/roles', 'UserApiController:saveRole', 'api-save-roles');
    // load all permissions
    $router->add('GET', '/permissions/[*:permissionId]?', 'UserApiController:loadPermissions', 'api-load-permissions');
    // save permission
    $router->add('POST', '/permissions', 'UserApiController:savePermission', 'api-save-permissions');
    // load role permissions
    $router->add('GET', '/role-permissions/[*:roleId]?', 'UserApiController:loadRolePermissions', 'api-load-role-permissions');
    // add permission to role
    $router->add('POST', '/role-permissions', 'UserApiController:saveRolePermissions', 'api-save-role-permissions');
    // get user permissions
    $router->add('GET', '/user-permissions/[*:userId]', 'UserApiController:loadUserPermissions', 'api-load-user-permissions');
    // assign user role
    $router->add('POST', '/assign-role', 'UserApiController:assignRole', 'api-assign-role');
    // get user roles
    $router->add('GET', '/user-role/[*:userId]', 'UserApiController:loadUserRoles', 'api-load-user-roles');
    // test user permission
    $router->add('POST', '/has-permission', 'UserApiController:hasPermission', 'api-has-permission');
    // practice
    $router->add('POST', '/practice', 'UserApiController:savePractice', 'api-save-practice');

    $router->add('POST', '/user-import', 'UserApiController:importUsers', 'api-import-users');

    $router->add('POST', '/user/delete-coach', 'UserApiController:deleteCoach', 'api-delete-coach');

    $router->add('POST', '/scheduleSurvey', 'AdminController:scheduleSurvey', 'admin-schedule-survey' );
    // load motivational prompt
    $router->add('GET', '/motivational-prompt/[*:promptId]', 'UserApiController:loadMotivationalPrompt');

    $router->add('GET', '/health-survey/q-and-a/[*:batchId]', 'UserApiController:loadQuestionsAndAnswers');

});
