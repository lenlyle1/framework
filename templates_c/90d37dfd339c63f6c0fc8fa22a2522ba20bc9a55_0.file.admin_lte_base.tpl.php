<?php
/* Smarty version 3.1.31, created on 2018-03-12 06:58:09
  from "/var/www/framework/Views/admin/admin_lte_base.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5aa687719d00f2_95789316',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '90d37dfd339c63f6c0fc8fa22a2522ba20bc9a55' => 
    array (
      0 => '/var/www/framework/Views/admin/admin_lte_base.tpl',
      1 => 1520863084,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5aa687719d00f2_95789316 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_pathFor')) require_once '/var/www/framework/App/Lib/Smarty/Plugins/function.pathFor.php';
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $_smarty_tpl->tpl_vars['sitename']->value;?>
 Admin <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_13013199135aa68771990229_20267640', "title");
?>
</title>
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/rowgroup/1.0.0/css/rowGroup.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/assets/plugins/AdminLTE-2.3.11/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/plugins/AdminLTE-2.3.11/css/AdminLTE.css">
    <link rel="stylesheet" href="/assets/styles/admin/admin.css">
            <?php echo '<script'; ?>
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"><?php echo '</script'; ?>
>
</head>
<body class="hold-transition skin-cth sidebar-mini">
<div class="wrapper">
    <header class="main-header">
        <a href="/" class="logo">
            <span class="logo-mini">CTH</span>
            <span class="logo-lg"><?php echo $_smarty_tpl->tpl_vars['sitename']->value;?>
 Admin</span>
        </a>
        <nav class="navbar navbar-static-top " role="navigation" style="color: #fff; font-size: 3rem;">
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button" style="font-size: .5em;"></a>
            <span class="practice-name"><?php echo $_smarty_tpl->tpl_vars['user']->value->practice_name;?>
</span>
            <span><a href="<?php echo smarty_function_pathFor(array('name'=>"signout"),$_smarty_tpl);?>
"><button class="btn btn-primary btn-sm">Signout</button></a></span>
        </nav>
    </header>
    <aside class="main-sidebar">
        <section class="sidebar">
            <div class="user-panel">
                <div class="pull-left info">
                    <p><?php echo $_smarty_tpl->tpl_vars['user']->value->username;?>
</p>
                </div>
            </div>
            <ul class="sidebar-menu">
                <li class="header">Menu</li>
                <li <?php if ($_smarty_tpl->tpl_vars['route']->value['name'] == 'admin-dashboard') {?>class="active"<?php }?>><a href="/admin/dashboard">Dashboard</a></li>
<!-- 
                <li><a href="<?php echo smarty_function_pathFor(array('name'=>'admin-users'),$_smarty_tpl);?>
">Users</a></li> -->
                <?php if (\Lib\User\User::can('edit_roles',$_smarty_tpl->tpl_vars['userPermissions']->value)) {?>
                    <li><a href="<?php echo smarty_function_pathFor(array('name'=>'admin-list-roles'),$_smarty_tpl);?>
">Roles</a></li>
                <?php }?>
                <?php if (\Lib\User\User::can('edit_permissions',$_smarty_tpl->tpl_vars['userPermissions']->value)) {?>
                    <li><a href="<?php echo smarty_function_pathFor(array('name'=>'admin-list-permissions'),$_smarty_tpl);?>
">Permissions</a></li>
                <?php }?><!-- 
                <?php if (\Lib\User\User::can('edit_translations',$_smarty_tpl->tpl_vars['userPermissions']->value)) {?>
                    <li><a href="<?php echo smarty_function_pathFor(array('name'=>'admin-translations'),$_smarty_tpl);?>
">Translations</a></li>
                <?php }?> -->
                <?php if (\Lib\User\User::can('edit_pages',$_smarty_tpl->tpl_vars['userPermissions']->value)) {?>
                    <li><a href="<?php echo smarty_function_pathFor(array('name'=>'admin-pages'),$_smarty_tpl);?>
">CMS Pages</a></li>
                <?php }?>
                <?php if (\Lib\User\User::can('edit_products',$_smarty_tpl->tpl_vars['userPermissions']->value)) {?>
                    <li><a href="<?php echo smarty_function_pathFor(array('name'=>'admin-products'),$_smarty_tpl);?>
">Products</a></li>
                <?php }?>
            </ul>
        </section>
    </aside>
    <div class="content-wrapper">
        <section class="content-header">
            <h1><?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_14337457825aa687719c1d89_87475464', "page_heading");
?>
</h1>
        </section>
        <section class="content">
            <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_16850720545aa687719c38d8_16150676', "search-bar");
?>

            <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_16588938015aa687719c4896_09953836', "content");
?>

        </section>
    </div>
    <footer>
        <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_14314741895aa687719c5710_99233497', "footer_scripts");
?>

    </footer>
</div>

    <?php if (is_array($_smarty_tpl->tpl_vars['flash']->value)) {?>
        <div class="flash-text"><?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['flash']->value, 'message');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['message']->value) {
echo $_smarty_tpl->tpl_vars['message']->value;?>
<br /><?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>
</div>
    <?php }?>

</body>
</html>
<?php }
/* {block "title"} */
class Block_13013199135aa68771990229_20267640 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'title' => 
  array (
    0 => 'Block_13013199135aa68771990229_20267640',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
}
}
/* {/block "title"} */
/* {block "page_heading"} */
class Block_14337457825aa687719c1d89_87475464 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_heading' => 
  array (
    0 => 'Block_14337457825aa687719c1d89_87475464',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>
Admin<?php
}
}
/* {/block "page_heading"} */
/* {block "search-bar"} */
class Block_16850720545aa687719c38d8_16150676 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'search-bar' => 
  array (
    0 => 'Block_16850720545aa687719c38d8_16150676',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
}
}
/* {/block "search-bar"} */
/* {block "content"} */
class Block_16588938015aa687719c4896_09953836 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_16588938015aa687719c4896_09953836',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
}
}
/* {/block "content"} */
/* {block "footer_scripts"} */
class Block_14314741895aa687719c5710_99233497 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'footer_scripts' => 
  array (
    0 => 'Block_14314741895aa687719c5710_99233497',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

            <?php echo '<script'; ?>
>
                var is_live = <?php echo $_smarty_tpl->tpl_vars['is_live']->value;?>
;
                var auth_id = '<?php echo $_smarty_tpl->tpl_vars['auth_id']->value;?>
';
                var auth_public = '<?php echo $_smarty_tpl->tpl_vars['auth_public']->value;?>
';
            <?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="https://cdn.rawgit.com/vast-engineering/jquery-popup-overlay/1.7.13/jquery.popupoverlay.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="https://cdn.datatables.net/rowgroup/1.0.0/js/dataTables.rowGroup.min.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="/assets/plugins/AdminLTE-2.3.11/bootstrap/js/bootstrap.min.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="/assets/plugins/AdminLTE-2.3.11/js/AdminLTE.min.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="/assets/scripts/admin/logging.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="/assets/scripts/admin/form-errors.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="/assets/scripts/admin/admin.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
 src="//cdn.ckeditor.com/4.8.0/standard/ckeditor.js"><?php echo '</script'; ?>
>
        <?php
}
}
/* {/block "footer_scripts"} */
}
