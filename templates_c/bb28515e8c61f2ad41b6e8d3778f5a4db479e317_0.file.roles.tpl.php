<?php
/* Smarty version 3.1.31, created on 2018-01-12 12:12:56
  from "/var/www/framework/Views/admin/pages/roles.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a5916c8e1af55_49922384',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bb28515e8c61f2ad41b6e8d3778f5a4db479e317' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/roles.tpl',
      1 => 1515787944,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a5916c8e1af55_49922384 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_pathFor')) require_once '/var/www/framework/App/Lib/Smarty/Plugins/function.pathFor.php';
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_8827694815a5916c8e152b5_94612128', "page_heading");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_4061817415a5916c8e16682_56336859', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, 'admin/admin_lte_base.tpl');
}
/* {block "page_heading"} */
class Block_8827694815a5916c8e152b5_94612128 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_heading' => 
  array (
    0 => 'Block_8827694815a5916c8e152b5_94612128',
  ),
);
public $append = 'true';
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    > Roles
<?php
}
}
/* {/block "page_heading"} */
/* {block "content"} */
class Block_4061817415a5916c8e16682_56336859 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_4061817415a5916c8e16682_56336859',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['roles']->value, 'role');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['role']->value) {
?>
        <div class="pure-u-1-4"><?php echo $_smarty_tpl->tpl_vars['role']->value->role_name;?>
 <a href="<?php echo smarty_function_pathFor(array('name'=>'admin-role-permissions'),$_smarty_tpl);?>
?rid=<?php echo $_smarty_tpl->tpl_vars['role']->value->role_id;?>
">Edit permissions</a></div></br>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

<?php
}
}
/* {/block "content"} */
}
