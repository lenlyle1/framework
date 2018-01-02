<?php
/* Smarty version 3.1.31, created on 2017-12-29 06:12:25
  from "/var/www/framework/Views/site_base.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a464d496eb736_70711782',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'dd51f9c04e2731d31a650930a8d17aeec7ea51ea' => 
    array (
      0 => '/var/www/framework/Views/site_base.tpl',
      1 => 1514556741,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:site-css.tpl' => 1,
    'file:top-menu.tpl' => 2,
    'file:footer-menu.tpl' => 1,
  ),
),false)) {
function content_5a464d496eb736_70711782 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_embedcss')) require_once '/var/www/framework/App/Lib/Smarty/Plugins/function.embedcss.php';
if (!is_callable('smarty_function_compile_stack')) require_once '/var/www/framework/App/Lib/Smarty/Plugins/function.compile_stack.php';
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
?>
<html lang="en" ng-app>
    <head>
        <title><?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_147653905a464d496d0365_23329568', "title");
?>
</title>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="description" content="<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_6948493835a464d496d32d0_97992071', "meta_description");
?>
" />
        <meta name="keyword" content="<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_4137573615a464d496d4d65_57103766', "meta_keyword");
?>
" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_14654107165a464d496d6662_17414589', "css");
?>


        <?php $_smarty_tpl->_subTemplateRender("file:site-css.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


        <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_10857427695a464d496e0942_18690578', "js");
?>

        
        <?php echo smarty_function_compile_stack(array(),$_smarty_tpl);?>


        <?php if (!empty($_smarty_tpl->tpl_vars['recaptcha']->value)) {?>
            <?php echo '<script'; ?>
 src='https://www.google.com/recaptcha/api.js'><?php echo '</script'; ?>
>
        <?php }?>

        <?php echo '<script'; ?>
>
            
        <?php echo '</script'; ?>
>
    </head>
    <body>
        <header>
            <div class="contentHolder">
                <div class="left">
                    <div class="logo">
                        <a href="/">
                            <span class="site-name"><?php echo ucwords($_smarty_tpl->tpl_vars['site']->value->shortname);?>
</span> up my Love
                        </a>
                    </div>

                </div>
                <?php if (!empty($_smarty_tpl->tpl_vars['user']->value)) {?>
                    <div class="left">
                        <?php $_smarty_tpl->_subTemplateRender("file:top-menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

                    </div>
                    <div class="right">
                        <a class="btn btn-head" href="/user/logout">Logout</a>
                    </div>
                <?php } else { ?>
                    <div class="left">
                        <?php $_smarty_tpl->_subTemplateRender("file:top-menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>

                    </div>
                    <div class="right top-signin" >
                        <a class="btn btn-head" href="/user/signup">Signup</a>
                        <?php if ($_smarty_tpl->tpl_vars['site']->value->status != "prelaunch") {?>
                            or
                            <a class="btn btn-head" href="/user/login">Login</a>
                        <?php }?>
                    </div>
                <?php }?>
            </div>
        </header>
        <div class="contentHolder main-body">
            <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_16701973435a464d496e7827_61427874', "content");
?>

        </div>


        <footer>    
            <div class="contentHolder"> 
                <div class="row">
                    <?php $_smarty_tpl->_subTemplateRender("file:footer-menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

                </div>
                <div class="row">
                    <div class="center copyright">
                        &copy; Copyright <?php echo date('Y');?>
 Light Up My Love LLC
                    </div>
                </div>
                
                <?php if (!empty($_smarty_tpl->tpl_vars['swatches']->value)) {?>
                <div class="swatchHolder">
                    <h2>Swatches</h2>   
                    <div class="contentHolder center">
                        <?php echo $_smarty_tpl->tpl_vars['swatches']->value;?>

                    </div>
                </div>
                <?php }?>
            </div>
        </footer>

        
        <?php echo '<script'; ?>
>
        
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-73295442-1', 'auto');
          ga('send', 'pageview');
        
        <?php echo '</script'; ?>
>
    </body>
</html><?php }
/* {block "title"} */
class Block_147653905a464d496d0365_23329568 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'title' => 
  array (
    0 => 'Block_147653905a464d496d0365_23329568',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
echo ucwords($_smarty_tpl->tpl_vars['site']->value->name);
}
}
/* {/block "title"} */
/* {block "meta_description"} */
class Block_6948493835a464d496d32d0_97992071 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'meta_description' => 
  array (
    0 => 'Block_6948493835a464d496d32d0_97992071',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
echo $_smarty_tpl->tpl_vars['site']->value->description;
}
}
/* {/block "meta_description"} */
/* {block "meta_keyword"} */
class Block_4137573615a464d496d4d65_57103766 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'meta_keyword' => 
  array (
    0 => 'Block_4137573615a464d496d4d65_57103766',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
echo $_smarty_tpl->tpl_vars['site']->value->keywords;
}
}
/* {/block "meta_keyword"} */
/* {block "css"} */
class Block_14654107165a464d496d6662_17414589 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'css' => 
  array (
    0 => 'Block_14654107165a464d496d6662_17414589',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

            <?php echo smarty_function_embedcss(array('cssfile'=>"/assets/css/geometry.css"),$_smarty_tpl);?>

            <?php echo smarty_function_embedcss(array('cssfile'=>"/assets/css/responsive.css"),$_smarty_tpl);?>

            <?php echo smarty_function_embedcss(array('cssfile'=>"/assets/css/forms.css"),$_smarty_tpl);?>

            <?php echo smarty_function_embedcss(array('cssfile'=>"/assets/css/styles.css"),$_smarty_tpl);?>

            <?php echo smarty_function_embedcss(array('cssfile'=>"/assets/css/globalStyles.css"),$_smarty_tpl);?>

            <?php echo smarty_function_embedcss(array('cssfile'=>"/assets/css/site-styles.css"),$_smarty_tpl);?>

            <?php echo smarty_function_embedcss(array('cssfile'=>"/assets/css/sites-geometry.css"),$_smarty_tpl);?>

            <?php echo smarty_function_embedcss(array('cssfile'=>"/assets/css/responsive.css"),$_smarty_tpl);?>


            <?php if (!empty($_smarty_tpl->tpl_vars['siteStyle']->value)) {?>
                <?php echo smarty_function_embedcss(array('cssfile'=>"/assets/css/".((string)$_smarty_tpl->tpl_vars['siteStyle']->value).".css"),$_smarty_tpl);?>

            <?php }?>
        <?php
}
}
/* {/block "css"} */
/* {block "js"} */
class Block_10857427695a464d496e0942_18690578 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'js' => 
  array (
    0 => 'Block_10857427695a464d496e0942_18690578',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


        <?php
}
}
/* {/block "js"} */
/* {block "content"} */
class Block_16701973435a464d496e7827_61427874 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_16701973435a464d496e7827_61427874',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


            <?php
}
}
/* {/block "content"} */
}
