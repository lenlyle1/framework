<?php
/* Smarty version 3.1.31, created on 2018-01-05 12:27:39
  from "/var/www/framework/Views/pages/signup.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a4fdfbb877887_60049053',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '15aa159bd5e53b4f71fb968a8c932886e37d914d' => 
    array (
      0 => '/var/www/framework/Views/pages/signup.tpl',
      1 => 1515184051,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:pages/partials/user_details_form.tpl' => 1,
  ),
),false)) {
function content_5a4fdfbb877887_60049053 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_translate')) require_once '/var/www/framework/App/Lib/Smarty/Plugins/function.translate.php';
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_10113579775a4fdfbb871b17_30188571', "content");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1761830985a4fdfbb876955_51471043', "js");
$_smarty_tpl->inheritance->endChild($_smarty_tpl, '../site_base.tpl');
}
/* {block "content"} */
class Block_10113579775a4fdfbb871b17_30188571 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_10113579775a4fdfbb871b17_30188571',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<main role="main">
    <div class="wrap">
        <div class="container">
            <div class="login-box" style="height:auto;">
                <div class="login-header">
                    <p><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"sign_up",'text'=>"Sign up"),$_smarty_tpl);?>
</p>
                </div>
                <?php $_smarty_tpl->_subTemplateRender('file:pages/partials/user_details_form.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

            </div>
        </div>
    </div>
</main>

<?php
}
}
/* {/block "content"} */
/* {block "js"} */
class Block_1761830985a4fdfbb876955_51471043 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'js' => 
  array (
    0 => 'Block_1761830985a4fdfbb876955_51471043',
  ),
);
public $append = 'true';
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
 src="/assets/scripts/signup.js"><?php echo '</script'; ?>
>
<?php
}
}
/* {/block "js"} */
}
