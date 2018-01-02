<?php
/* Smarty version 3.1.31, created on 2017-12-29 05:52:04
  from "/var/www/framework/Views/pages/home.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a4648845b2a27_76288451',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '73824332e6ac4ed1a9240367c1cda21f753653fa' => 
    array (
      0 => '/var/www/framework/Views/pages/home.tpl',
      1 => 1499702023,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:pages/partials/anonymous_header.tpl' => 1,
  ),
),false)) {
function content_5a4648845b2a27_76288451 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_translate')) require_once '/var/www/framework/App/Lib/Smarty/Plugins/function.translate.php';
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_4609855335a4648845a2121_85758000', "body_attrs");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_20484016945a4648845a34c9_63266318', "navigation");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_18754718685a4648845a52c0_54870291', "main");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_3730184715a4648845b1029_83362391', "footer");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_6597649405a4648845b1fc1_89255363', "foot_extra");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, '../site_base.tpl');
}
/* {block "body_attrs"} */
class Block_4609855335a4648845a2121_85758000 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body_attrs' => 
  array (
    0 => 'Block_4609855335a4648845a2121_85758000',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

class="bgphotos"
<?php
}
}
/* {/block "body_attrs"} */
/* {block "navigation"} */
class Block_20484016945a4648845a34c9_63266318 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'navigation' => 
  array (
    0 => 'Block_20484016945a4648845a34c9_63266318',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    
    <?php $_smarty_tpl->_subTemplateRender("file:pages/partials/anonymous_header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php
}
}
/* {/block "navigation"} */
/* {block "main"} */
class Block_18754718685a4648845a52c0_54870291 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'main' => 
  array (
    0 => 'Block_18754718685a4648845a52c0_54870291',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<div data-slides-preload>
	<img src="/assets/images/photos/slideshow/01.jpg">
	<img src="/assets/images/photos/slideshow/02.jpg">
	<img src="/assets/images/photos/slideshow/03.jpg">
	<img src="/assets/images/photos/slideshow/04.jpg">
	<img src="/assets/images/photos/slideshow/05.jpg">
	<img src="/assets/images/photos/slideshow/06.jpg">
	<img src="/assets/images/photos/slideshow/07.jpg">
	<img src="/assets/images/photos/slideshow/08.jpg">
</div>

<div data-slides='[
    "/assets/images/photos/slideshow/01.jpg",
    "/assets/images/photos/slideshow/02.jpg",
    "/assets/images/photos/slideshow/03.jpg",
    "/assets/images/photos/slideshow/04.jpg",
    "/assets/images/photos/slideshow/05.jpg",
    "/assets/images/photos/slideshow/06.jpg",
    "/assets/images/photos/slideshow/07.jpg",
    "/assets/images/photos/slideshow/08.jpg"
]'></div>

<div class="mega kill">
    <div class="mega-wrapper pure-g">
        <div class="mega-primary pure-u-1 pure-u-md-5-8">
            <p class="tip"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"home_welcome",'text'=>"Welcome to"),$_smarty_tpl);?>
</p>
            <h3 class="oomph"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"home_cth",'text'=>"Connection to Health"),$_smarty_tpl);?>
</h3>
            <p class="convey">
                <?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"home_helping",'text'=>"Helping patients and practice staff work <br> together to make plans for better health"),$_smarty_tpl);?>

            </p>
        </div>


        <div class="mega-secondary pure-u-1 pure-u-md-3-8">
            <img src="/assets/images/logo.svg">

            <form  action="/auth/signin" method="post" id="login-form">
                <!-- <label for="username">Username or MRN</label> -->
                <input type="text" id="username" class="inputer" name="username" placeholder='<?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"home_placeholder_username",'text'=>"Username or MRN"),$_smarty_tpl);?>
' autocapitalize="none" required>
                <!-- <label for="password">Password</label> -->
                <input type="password" id="password" class="inputer" name="password" placeholder='<?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"home_placeholder_password",'text'=>"Password"),$_smarty_tpl);?>
' required>
                <a class="pure-button button-blue button-massive" href="#" onclick="$('#login-form').submit();" ><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"log_in",'text'=>"Log In"),$_smarty_tpl);?>
</a>
                <ul class="splitsky">
                    <li><a href="/forgot-password-form"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"home_forgot_password",'text'=>"Forgot password?"),$_smarty_tpl);?>
</a></li>
                    <li><a href="/login-help"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"login_help",'text'=>"Login help"),$_smarty_tpl);?>
</a></li>
                </ul>
            </form>

            
        </div>
    </div>
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

<?php
}
}
/* {/block "main"} */
/* {block "footer"} */
class Block_3730184715a4648845b1029_83362391 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'footer' => 
  array (
    0 => 'Block_3730184715a4648845b1029_83362391',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<?php
}
}
/* {/block "footer"} */
/* {block "foot_extra"} */
class Block_6597649405a4648845b1fc1_89255363 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'foot_extra' => 
  array (
    0 => 'Block_6597649405a4648845b1fc1_89255363',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<?php echo '<script'; ?>
 src="/assets/scripts/slideshow.js"><?php echo '</script'; ?>
>

<?php
}
}
/* {/block "foot_extra"} */
}
