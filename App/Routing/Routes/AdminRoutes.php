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
    $router->add( 'GET', '/home', 'AdminController:login', 'admin-home' );
    $router->add( 'GET', '/dashboard', 'AdminController:dashboard', 'admin-dashboard' );
    $router->add( 'GET', '/users', 'AdminController:listUsers', 'admin-list-users' );
    $router->add( 'GET', '/user/patient/[*:user_id]', 'AdminController:viewPatientUser', 'admin-view-patient-user' );
    $router->add( 'GET', '/user/staff/[*:user_id]', 'AdminController:viewStaffUser', 'admin-view-staff-user' );
    $router->add( 'GET', '/users/patients', 'AdminController:listPatients', 'admin-list-patients' );
    $router->add( 'POST', '/users/patients/import', 'AdminController:importPatients', 'admin-import-patients' );
    $router->add( 'GET', '/users/staff', 'AdminController:listStaff', 'admin-list-staff' );
    $router->add( 'GET', '/users/login-as/[*:user_id]', 'AdminController:loginAs', 'admin-login-as-user');
    $router->add( 'GET', '/groups', 'AdminController:listGroups', 'admin-list-groups' );
    $router->add( 'GET', '/groups/[*:group_id]', 'AdminController:editGroup', 'admin-list-group-edit' );
    $router->add( 'GET', '/practices', 'AdminController:listPractices', 'admin-list-practices' );
    $router->add( 'GET', '/reporting', 'AdminController:reporting', 'admin-reporting' );

    // Role and permission management
    $router->add( 'GET', '/roles', 'AdminController:listRoles', 'admin-list-roles');
    $router->add( 'POST', '/roles', 'AdminController:postRole', 'admin-post-role');
    $router->add( 'GET', '/permissions', 'AdminController:listPermissions', 'admin-list-permissions');
    $router->add( 'GET', '/edit-permission', 'AdminController:editPermission', 'admin-edit-permission');
    $router->add( 'POST', '/permissions', 'AdminController:postPermission', 'admin-post-permission');
    $router->add( 'GET', '/role-permissions', 'AdminController:rolePermissions', 'admin-role-permissions');
    $router->add( 'POST', '/role-permissions', 'AdminController:postRolePermissions', 'admin-post-role-permissions');
    $router->add( 'GET', '/user-roles', 'AdminController:userRoles', 'admin-user-roles');
    $router->add( 'POST', '/user-roles', 'AdminController:postUserRoles', 'admin-post-user-roles');


    $router->add( 'GET', '/translations', 'AdminController:translations', 'admin-translations');
})->addMiddleware('before', 'AdminMiddleware:run');

