<?php
/* Smarty version 3.1.31, created on 2018-01-12 12:12:58
  from "/var/www/framework/Views/admin/pages/role-permissions.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a5916cb00dca0_83071945',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '133c1554006400b1e86d2d751065e74b0d6130d4' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/role-permissions.tpl',
      1 => 1515787939,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a5916cb00dca0_83071945 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_15730707795a5916cb000336_42959075', "page_heading");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_20541076085a5916cb002cf5_74975401', "search-bar");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_6038581495a5916cb0044a1_85521603', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_9424455485a5916cb00cd44_67616521', "footer_scripts");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, 'admin/admin_lte_base.tpl');
}
/* {block "page_heading"} */
class Block_15730707795a5916cb000336_42959075 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_heading' => 
  array (
    0 => 'Block_15730707795a5916cb000336_42959075',
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
class Block_20541076085a5916cb002cf5_74975401 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'search-bar' => 
  array (
    0 => 'Block_20541076085a5916cb002cf5_74975401',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
}
}
/* {/block "search-bar"} */
/* {block "content"} */
class Block_6038581495a5916cb0044a1_85521603 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_6038581495a5916cb0044a1_85521603',
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
class Block_9424455485a5916cb00cd44_67616521 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'footer_scripts' => 
  array (
    0 => 'Block_9424455485a5916cb00cd44_67616521',
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
