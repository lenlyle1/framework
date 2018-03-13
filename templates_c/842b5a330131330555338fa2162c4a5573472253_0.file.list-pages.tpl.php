<?php
/* Smarty version 3.1.31, created on 2018-03-12 09:48:06
  from "/var/www/framework/Views/admin/pages/list-pages.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5aa6af463d2a41_83305682',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '842b5a330131330555338fa2162c4a5573472253' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/list-pages.tpl',
      1 => 1520873284,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5aa6af463d2a41_83305682 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_7996325035aa6af463caf57_59256470', "page_heading");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_20824459505aa6af463cd547_97657742', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, 'admin/admin_lte_base.tpl');
}
/* {block "page_heading"} */
class Block_7996325035aa6af463caf57_59256470 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_heading' => 
  array (
    0 => 'Block_7996325035aa6af463caf57_59256470',
  ),
);
public $append = 'true';
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    > CMS Pages
<?php
}
}
/* {/block "page_heading"} */
/* {block "content"} */
class Block_20824459505aa6af463cd547_97657742 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_20824459505aa6af463cd547_97657742',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <a class="btn" href="/admin/cms/edit">Add Page</a>
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
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['pages']->value, 'page');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['page']->value) {
?>
                <tr>
                    <td class=""><?php echo $_smarty_tpl->tpl_vars['page']->value->title;?>
</td>
                    <!-- <td><?php echo $_smarty_tpl->tpl_vars['page']->value->permission_desc;?>
</td> -->
                    <td><a href="/admin/cms/edit/<?php echo $_smarty_tpl->tpl_vars['page']->value->url_name;?>
">Edit</a></td>
                    <td><a href="/admin/cms/delete/<?php echo $_smarty_tpl->tpl_vars['page']->value->url_name;?>
">Delete</a></td>
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
