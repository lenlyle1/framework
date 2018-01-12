<?php
/* Smarty version 3.1.31, created on 2018-01-08 10:10:40
  from "/var/www/framework/Views/admin/pages/role-permissions.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a53b4200918d8_36926129',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '133c1554006400b1e86d2d751065e74b0d6130d4' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/role-permissions.tpl',
      1 => 1499702023,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a53b4200918d8_36926129 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_14051414825a53b420083930_43938082', "page_heading");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_2009601225a53b420086e02_94837889', "search-bar");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_4022333255a53b420088605_95359626', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_954590815a53b420090a20_10843917', "footer_scripts");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, './switcher.tpl');
}
/* {block "page_heading"} */
class Block_14051414825a53b420083930_43938082 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_heading' => 
  array (
    0 => 'Block_14051414825a53b420083930_43938082',
  ),
);
public $append = 'true';
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    > Role Permissions - <?php echo $_smarty_tpl->tpl_vars['role']->value->role_name;?>

<?php
}
}
/* {/block "page_heading"} */
/* {block "search-bar"} */
class Block_2009601225a53b420086e02_94837889 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'search-bar' => 
  array (
    0 => 'Block_2009601225a53b420086e02_94837889',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
}
}
/* {/block "search-bar"} */
/* {block "content"} */
class Block_4022333255a53b420088605_95359626 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_4022333255a53b420088605_95359626',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <form action="/admin/role-permissions" method="post" id="role-permissions">
        <input type="hidden" name="role_id" value="<?php echo $_smarty_tpl->tpl_vars['role']->value->role_id;?>
" />
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['permissions']->value, 'permission', false, 'id');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['permission']->value) {
?>
        <div class="row half" style="border-bottom: 1px solid #ccc;">
            <div class="col-md-6" >
                <?php echo $_smarty_tpl->tpl_vars['permission']->value->permission_desc;?>

            </div>

            <div class="col-md-6">
                <input type="checkbox" name="permissions[<?php echo $_smarty_tpl->tpl_vars['permission']->value->permission_id;?>
]"
                <?php if (isset($_smarty_tpl->tpl_vars['rolePermissions']->value[$_smarty_tpl->tpl_vars['permission']->value->permission_id])) {?>checked="checked"<?php }?> />
            </div>
        </div>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

    </form>

    <div class="partial half center">
        <button id="save" class="btn btn-primary">Update Permissions</button>
    </div>
<?php
}
}
/* {/block "content"} */
/* {block "footer_scripts"} */
class Block_954590815a53b420090a20_10843917 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'footer_scripts' => 
  array (
    0 => 'Block_954590815a53b420090a20_10843917',
  ),
);
public $append = 'true';
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
 src="/assets/scripts/admin/role-permissions.js"><?php echo '</script'; ?>
>
<?php
}
}
/* {/block "footer_scripts"} */
}
