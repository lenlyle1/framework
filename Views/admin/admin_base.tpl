<!doctype html>
<html lang="en" dir="ltr" class="no-js remodal-bg">
    <head>
        <title>{$sitename} Admin {block name="title"}{/block}</title>

    {literal}
        <script>/*! no-js uglified | https://gist.github.com/mhulse/4704893 */!function(e){e.documentElement.className=e.documentElement.className.replace(/\bno-js\b/,"js")}(document);</script>
    {/literal}
        <!-- CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/normalize/5.0.0/normalize.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/fontawesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="/assets/styles/admin/styles.css">
        <link rel="stylesheet" href="/assets/styles/remodal.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/g/pure@0.6.2(buttons-min.css+forms-min.css+grids-min.css+grids-responsive-min.css+menus-min.css+tables-min.css)">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        {block name="head_extra"}{/block}
    </head>

    <body>

        <header id="main">
            Logged in as: {$user->username}


            <div id="langs">
                <a href="/auth/signout">Signout</a>
            </div>
            <nav id="top-nav">
                <ul>
                    <li><a href="{pathFor name='admin-dashboard'}">Home</a></li>
                    {if \Lib\User\User::can('edit_roles', $userPermissions)}
                        <li><a href="{pathFor name='admin-list-roles'}">Roles</a></li>
                    {/if}
                    {if \Lib\User\User::can('edit_permissions', $userPermissions)}
                        <li><a href="{pathFor name='admin-list-permissions'}">Permissions</a></li>
                    {/if}
                    {if \Lib\User\User::can('edit_translations', $userPermissions)}
                        <li><a href="{pathFor name='admin-translations'}">Translations</a></li>
                    {/if}
                </ul>
            </nav>

        </header>

        <div id="main-content">


            <div class="page_title">{block name="page_heading"}{translate language=$language key="admin" text="Admin"}{/block}</div>

            <nav id="left-nav">
                <ul>
                    <li class="patients-bg"><a {if $route['name'] == 'admin-dashboard'}class="active"}{/if}href="/admin/dashboard">Dashboard</a></li>

                    {if \Lib\User\User::can('view_patients', $userPermissions)}
                        <li class="patients-bg{if preg_match('/^\/admin\/user[s]?\/patient/', $currentUrl)}-active{/if}"><a href="{pathFor name='admin-list-patients'}">Manage Patients</a></li>
                    {/if}
                    {if \Lib\User\User::can('view_staff', $userPermissions)}
                        <li class="staff-bg{if preg_match('/^\/admin\/user[s]?\/staff/', $currentUrl)}-active{/if}"><a href="{pathFor name='admin-list-staff'}">Manage Staff</a></li>
                    {/if}
                    {if \Lib\User\User::can('view_practices', $userPermissions)}
                        <li class="practice-bg{if preg_match('/^\/admin\/practice/', $currentUrl)}-active{/if}"><a {if $route['name'] == 'admin-list-practices'}class="active"}{/if}href="/admin/practices">Manage Practices</a></li>
                    {/if}
                    {if \Lib\User\User::can('view_groups', $userPermissions)}
                        <li class="groups-bg{if preg_match('/^\/admin\/group/', $currentUrl)}-active{/if}"><a href="{pathFor name='admin-list-groups'}">Manage Groups</a></li>
                    {/if}
                    {if \Lib\User\User::can('view_reporting', $userPermissions)}
                        <li class="reports-bg{if preg_match('/^\/admin\/report/', $currentUrl)}-active{/if}"><a {if $route['name'] == 'admin-reporting'}class="active"}{/if}href="/admin/reporting">Reporting</a></li>
                    {/if}
                </ul>
            </nav>

            <div id="content-holder">
            {* {if $logged_in} *}
                <div>
                    {block name="search-bar"}
                        Search: <input type="text" placeholder="Enter Term" id="search-box" />
                    {/block}
                </div>
           {*  {/if} *}
                {block name="content"}

                {/block}
            </div>

            <div class="clear"></div>
        </div>

        <footer>
            <!-- JS -->
            {block name="footer_scripts"}
                <script>
                var is_live = {$is_live};

                var auth_id = 'superadmin';
                var auth_public = '128b733a-dffb-4095-b8b3-0075e18bb366';

                </script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
                <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
                <script src="https://cdn.rawgit.com/vast-engineering/jquery-popup-overlay/1.7.13/jquery.popupoverlay.js"></script>
                <script src="/assets/scripts/remodal.js"></script>
                <script src="/assets/scripts/admin/logging.js"></script>
                <script src="/assets/scripts/admin/form-errors.js"></script>
                <script src="/assets/scripts/cth.js"></script>
            {/block}
        </footer>

    </body>
</html>
