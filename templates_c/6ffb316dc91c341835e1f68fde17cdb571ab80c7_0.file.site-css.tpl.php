<?php
/* Smarty version 3.1.31, created on 2018-01-05 12:04:45
  from "/var/www/framework/Views/site-css.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a4fda5d60c715_41272353',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6ffb316dc91c341835e1f68fde17cdb571ab80c7' => 
    array (
      0 => '/var/www/framework/Views/site-css.tpl',
      1 => 1469211867,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a4fda5d60c715_41272353 (Smarty_Internal_Template $_smarty_tpl) {
?>
<style>

body {
	/*background-color: <?php echo $_smarty_tpl->tpl_vars['swatch7']->value;?>
;*/
}
header, footer {
	background-color: <?php echo $_smarty_tpl->tpl_vars['swatch1']->value;?>
;
	color: <?php echo $_smarty_tpl->tpl_vars['swatch2']->value;?>
;

}
.main-body{
	background-color: #fff;
}
.main-body {
	border: 3px solid <?php echo $_smarty_tpl->tpl_vars['swatch10']->value;?>
;
	border-top: 0px;
	border-bottom: 0px;
}
.btn-head {
	background-color: <?php echo $_smarty_tpl->tpl_vars['swatch2']->value;?>
;
	margin-top: 10px;
	border: 1px solid <?php echo $_smarty_tpl->tpl_vars['swatch5']->value;?>
;
}
label {
	color: <?php echo $_smarty_tpl->tpl_vars['swatch4']->value;?>
;
}

.user-brief > .username {
	background-color: <?php echo $_smarty_tpl->tpl_vars['swatch3']->value;?>
;
}

</style>

<?php }
}
