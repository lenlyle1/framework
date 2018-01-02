<?php

namespace Controllers;

use \App\Routing\Router;
use \Lib\Smarty\Template;

class HealthTipsController extends BaseController
{

    public static function healthTips(Router $router, $params)
    {

        global $smarty;

        # Declare/initialize template data:
        $template = 'home'; // Default template name for this route.
        $label = '';
        $location = '';
        $page = '';

        # Replace slashes with dashes:
        $location = str_replace('/', '-', $params['location']);
        $page = str_replace('/', '-', $params['page']);

        # Determine which template to use via location:
        if ($location) {

            # If California, make it everywhere else, otherwise use passed-in string:
            $template = (($location == 'california') ? 'everywhere-else' : $location);

            # If it is a sub-page, add that to the current template string:
            $template .= (($page) ? ('-' . $page) : '');

            # If it is not the landing page for `everywhere-else`, then remove that string from template:
            $template = str_replace('everywhere-else-', '', $template);

            # Human-readable version:
            $label = ucwords(str_replace('-', ' ', $location));

        }

        # Let the template person have access to these variables:
        Template::assign('data', [
            'template' => $template,
            'label' => $label,
            'location' => $location,
            'page' => $page,
        ]);

        return ('pages/health-tips/' . $template);

    }

}
