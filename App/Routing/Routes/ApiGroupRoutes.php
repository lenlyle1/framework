<?php

/* ------------------------------------------------------------
 |
 |  UserRoutes
 |

 ------------------------------------------------------------*/

use \Routing\Router;

$router->addGroup('/api', function() use ($router){
    // save group
    $router->add('POST', '/group', 'GroupController:saveGroup', 'api-save-group');
    // add user to group
    $router->add('POST', '/group/add-user', 'GroupController:addUserToGroup', 'api-group-add-user');
    //remove user from group
    $router->add('POST', '/group/remove-user', 'GroupController:removeUserFromGroup', 'api-group-remove-user');
    // add group note
    $router->add('POST', '/group/add-note', 'GroupController:addNote', 'api-group-add-note');
    // delete group note
    $router->add('POST', '/group/delete-note', 'GroupController:deleteNote', 'api-group-delete-note');
    // add user to group
    $router->add( 'GET', '/groups/[*:group_id]/add/[*:user_id]', 'AdminController:addToGroup', 'admin-group-add-user' );
    // add group message
    $router->add( 'POST', '/groups/message', 'GroupController:saveMessage', 'admin-group-save-message');
});
