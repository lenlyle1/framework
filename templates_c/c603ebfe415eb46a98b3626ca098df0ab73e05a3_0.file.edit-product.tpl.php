<?php
/* Smarty version 3.1.31, created on 2018-03-12 18:46:10
  from "/var/www/framework/Views/admin/pages/edit-product.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5aa72d62882c34_15362559',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c603ebfe415eb46a98b3626ca098df0ab73e05a3' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/edit-product.tpl',
      1 => 1520905568,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5aa72d62882c34_15362559 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_pathFor')) require_once '/var/www/framework/App/Lib/Smarty/Plugins/function.pathFor.php';
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_646121215aa72d6285b943_29903002', "page_heading");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_285109885aa72d62865f40_67527798', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, 'admin/admin_lte_base.tpl');
}
/* {block "page_heading"} */
class Block_646121215aa72d6285b943_29903002 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_heading' => 
  array (
    0 => 'Block_646121215aa72d6285b943_29903002',
  ),
);
public $append = 'true';
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    > CMS > <?php if ($_smarty_tpl->tpl_vars['page']->value) {?>Edit<?php } else { ?>Add<?php }?> Product <?php if ($_smarty_tpl->tpl_vars['product']->value) {?> - <?php echo $_smarty_tpl->tpl_vars['product']->value->name;
}
}
}
/* {/block "page_heading"} */
/* {block "content"} */
class Block_285109885aa72d62865f40_67527798 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_285109885aa72d62865f40_67527798',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div>
        <form action="<?php echo smarty_function_pathFor(array('name'=>'admin-products-save'),$_smarty_tpl);?>
" method="POST">
            <input type="hidden" name="product_id" value="<?php if ($_smarty_tpl->tpl_vars['product']->value->product_id) {
echo $_smarty_tpl->tpl_vars['product']->value->product_id;
} else { ?>null<?php }?>" />
            <div class="form-group">
                <label for="name">Name</label>
                <input class="form-control" type="text" name="name" placeholder="Product name" value="<?php echo $_smarty_tpl->tpl_vars['product']->value->name;?>
" />
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea class="form-control" name="description" id="desciption"><?php echo $_smarty_tpl->tpl_vars['product']->value->description;?>
</textarea>
            </div>
            <br>
            <button type="submit">Submit</button>
        </form>
   
    </div>

    <?php echo '<script'; ?>
>
        $(document).ready(function() {
            CKEDITOR.replace( 'pageBody' );
        });
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "content"} */
}
