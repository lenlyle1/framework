<?php
/* Smarty version 3.1.31, created on 2018-03-12 09:08:07
  from "/var/www/framework/Views/pages/page.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5aa6a5e7a5f523_53499145',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2cc4af05b7d375886a244a8f7cda70c15e22d95b' => 
    array (
      0 => '/var/www/framework/Views/pages/page.tpl',
      1 => 1520870886,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5aa6a5e7a5f523_53499145 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_12104793065aa6a5e7a5bf76_70528012', "content");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_21091841695aa6a5e7a5e8a5_70281529', "js");
$_smarty_tpl->inheritance->endChild($_smarty_tpl, '../site_base.tpl');
}
/* {block "content"} */
class Block_12104793065aa6a5e7a5bf76_70528012 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_12104793065aa6a5e7a5bf76_70528012',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<main role="main">
    <div class="wrap">
        <div class="container">
            <div class="login-box" style="height:auto;">
                <?php echo $_smarty_tpl->tpl_vars['page']->value->content;?>

            </div>
        </div>
    </div>
</main>

<?php
}
}
/* {/block "content"} */
/* {block "js"} */
class Block_21091841695aa6a5e7a5e8a5_70281529 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'js' => 
  array (
    0 => 'Block_21091841695aa6a5e7a5e8a5_70281529',
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
