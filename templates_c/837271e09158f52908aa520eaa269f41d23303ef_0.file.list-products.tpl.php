<?php
/* Smarty version 3.1.31, created on 2018-03-12 18:51:05
  from "/var/www/framework/Views/admin/pages/list-products.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5aa72e89f08651_03672979',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '837271e09158f52908aa520eaa269f41d23303ef' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/list-products.tpl',
      1 => 1520905794,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5aa72e89f08651_03672979 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_pathFor')) require_once '/var/www/framework/App/Lib/Smarty/Plugins/function.pathFor.php';
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_2809450935aa72e89ef7cf6_81837025', "page_heading");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_9044810425aa72e89f019a5_46932116', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, 'admin/admin_lte_base.tpl');
}
/* {block "page_heading"} */
class Block_2809450935aa72e89ef7cf6_81837025 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_heading' => 
  array (
    0 => 'Block_2809450935aa72e89ef7cf6_81837025',
  ),
);
public $append = 'true';
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    > Products
<?php
}
}
/* {/block "page_heading"} */
/* {block "content"} */
class Block_9044810425aa72e89f019a5_46932116 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_9044810425aa72e89f019a5_46932116',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <a class="btn" href="/admin/products/edit">Add Product</a>
    </div>
    <table class="grid display hover">
        <thead>
            <tr>
                <th>Name</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['products']->value, 'product');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['product']->value) {
?>
                <tr>
                    <td class=""><?php echo $_smarty_tpl->tpl_vars['product']->value->name;?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['product']->value->description;?>
</td>
                    <td><a href="<?php echo smarty_function_pathFor(array('name'=>'admin-products-edit'),$_smarty_tpl);?>
/<?php echo $_smarty_tpl->tpl_vars['product']->value->product_id;?>
">Edit</a></td> 
                </tr>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

        </tbody>
    </table>
    
<?php
}
}
/* {/block "content"} */
}
