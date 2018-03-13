<?php
/* Smarty version 3.1.31, created on 2018-03-12 09:10:23
  from "/var/www/framework/Views/site_base.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5aa6a66fcb3277_78008502',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'dd51f9c04e2731d31a650930a8d17aeec7ea51ea' => 
    array (
      0 => '/var/www/framework/Views/site_base.tpl',
      1 => 1520870961,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:footer-menu.tpl' => 1,
  ),
),false)) {
function content_5aa6a66fcb3277_78008502 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_compile_stack')) require_once '/var/www/framework/App/Lib/Smarty/Plugins/function.compile_stack.php';
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
?>
<html lang="en" ng-app>
    <head>
        <title><?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_6063618585aa6a66fc8b4c8_46178050', "title");
?>
</title>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="description" content="<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_13333736845aa6a66fc8de98_69646069', "meta_description");
?>
" />
        <meta name="keyword" content="<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1983179345aa6a66fc8f5e7_73040763', "meta_keyword");
?>
" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
        <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_5090095875aa6a66fc90c91_71176099', "css");
?>


        <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_4493964905aa6a66fc92645_41268513', "js");
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
</span>
                        </a>
                    </div>
                </div>
            </div>
        </header>
        <div class="contentHolder main-body">
            <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_20290700695aa6a66fc961a8_38495167', "content");
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
 <?php echo $_smarty_tpl->tpl_vars['sitename']->value;?>

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
class Block_6063618585aa6a66fc8b4c8_46178050 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'title' => 
  array (
    0 => 'Block_6063618585aa6a66fc8b4c8_46178050',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
echo ucwords($_smarty_tpl->tpl_vars['site']->value->name);
}
}
/* {/block "title"} */
/* {block "meta_description"} */
class Block_13333736845aa6a66fc8de98_69646069 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'meta_description' => 
  array (
    0 => 'Block_13333736845aa6a66fc8de98_69646069',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
echo $_smarty_tpl->tpl_vars['site']->value->description;
}
}
/* {/block "meta_description"} */
/* {block "meta_keyword"} */
class Block_1983179345aa6a66fc8f5e7_73040763 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'meta_keyword' => 
  array (
    0 => 'Block_1983179345aa6a66fc8f5e7_73040763',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
echo $_smarty_tpl->tpl_vars['site']->value->keywords;
}
}
/* {/block "meta_keyword"} */
/* {block "css"} */
class Block_5090095875aa6a66fc90c91_71176099 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'css' => 
  array (
    0 => 'Block_5090095875aa6a66fc90c91_71176099',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

            
        <?php
}
}
/* {/block "css"} */
/* {block "js"} */
class Block_4493964905aa6a66fc92645_41268513 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'js' => 
  array (
    0 => 'Block_4493964905aa6a66fc92645_41268513',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

        <?php echo '<script'; ?>
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"><?php echo '</script'; ?>
>
        <?php
}
}
/* {/block "js"} */
/* {block "content"} */
class Block_20290700695aa6a66fc961a8_38495167 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_20290700695aa6a66fc961a8_38495167',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


            <?php
}
}
/* {/block "content"} */
}
