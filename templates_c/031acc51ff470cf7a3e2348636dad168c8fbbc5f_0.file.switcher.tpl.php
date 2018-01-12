<?php
/* Smarty version 3.1.31, created on 2018-01-08 05:20:04
  from "/var/www/framework/Views/admin/pages/switcher.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a5370045f5336_47621236',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '031acc51ff470cf7a3e2348636dad168c8fbbc5f' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/switcher.tpl',
      1 => 1499702023,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a5370045f5336_47621236 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
if ('LTE') {?>
    <?php $_smarty_tpl->_assignInScope('tpl', '../admin_lte_base.tpl');
} else { ?>
    <?php $_smarty_tpl->_assignInScope('tpl', '../admin_base.tpl');
}?>


<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, $_smarty_tpl->tpl_vars['tpl']->value);
}
}
