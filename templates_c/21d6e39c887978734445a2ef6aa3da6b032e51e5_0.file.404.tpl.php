<?php
/* Smarty version 3.1.31, created on 2017-12-29 06:00:38
  from "/var/www/framework/Views/404/404.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a464a86a6f012_12473993',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '21d6e39c887978734445a2ef6aa3da6b032e51e5' => 
    array (
      0 => '/var/www/framework/Views/404/404.tpl',
      1 => 1499702023,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a464a86a6f012_12473993 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_5264815a464a86a6bbb5_53171491', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, '../site_base.tpl');
}
/* {block "content"} */
class Block_5264815a464a86a6bbb5_53171491 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_5264815a464a86a6bbb5_53171491',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <main role="main">
        <div class="container">
            <div class="pure-g">
                <div class="pure-u-3-4">
                    <h1>That page could not be found</h1>
                </div>
                <?php if (isset($_smarty_tpl->tpl_vars['missingTemplate']->value)) {?>
                    <div class="pure-u-3-4">
                        Template not found: <?php echo $_smarty_tpl->tpl_vars['missingTemplate']->value;?>

                    </div>
                <?php }?>
            </div>
        </div>
    </main>
<?php
}
}
/* {/block "content"} */
}
