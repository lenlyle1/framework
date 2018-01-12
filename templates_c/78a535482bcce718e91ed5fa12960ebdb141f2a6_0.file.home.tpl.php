<?php
/* Smarty version 3.1.31, created on 2018-01-08 05:20:04
  from "/var/www/framework/Views/admin/pages/home.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a5370045e7c48_80212753',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '78a535482bcce718e91ed5fa12960ebdb141f2a6' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/home.tpl',
      1 => 1499702023,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a5370045e7c48_80212753 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_18741751925a5370045e68a8_97484672', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, './switcher.tpl');
}
/* {block "content"} */
class Block_18741751925a5370045e68a8_97484672 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_18741751925a5370045e68a8_97484672',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    Admin home
<?php
}
}
/* {/block "content"} */
}
