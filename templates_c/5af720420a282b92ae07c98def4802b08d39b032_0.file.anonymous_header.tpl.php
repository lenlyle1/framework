<?php
/* Smarty version 3.1.31, created on 2017-12-29 05:52:04
  from "/var/www/framework/Views/pages/partials/anonymous_header.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a4648845e1b21_58464903',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5af720420a282b92ae07c98def4802b08d39b032' => 
    array (
      0 => '/var/www/framework/Views/pages/partials/anonymous_header.tpl',
      1 => 1499702023,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a4648845e1b21_58464903 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_translate')) require_once '/var/www/framework/App/Lib/Smarty/Plugins/function.translate.php';
?>
<ul>
    <li class="selected">
        <a href="/"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"login",'text'=>"Login"),$_smarty_tpl);?>
</a>
        <ul>
            <li><a href="/forgot-password"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"login_help",'text'=>"Login Help"),$_smarty_tpl);?>
</a></li>
        </ul>
    </li>
	<li><a href="/health-tips"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"health_tips",'text'=>"Health Tips"),$_smarty_tpl);?>
</a></li>
    <li><a href="/about"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"about",'text'=>"About"),$_smarty_tpl);?>
</a></li>
    <li>
        <?php if ($_smarty_tpl->tpl_vars['language']->value == "en") {?>
            <a class='lang_url spanish' href="/change-language/es"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"spanish",'text'=>"Español"),$_smarty_tpl);?>
</a>
        <?php } else { ?>
            <a class='lang_url english' href="/change-language/en"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"english",'text'=>"English"),$_smarty_tpl);?>
</a>
        <?php }?>
    </li>
</ul>
<?php }
}
