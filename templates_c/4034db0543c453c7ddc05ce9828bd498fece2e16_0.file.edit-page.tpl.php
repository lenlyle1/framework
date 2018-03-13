<?php
/* Smarty version 3.1.31, created on 2018-03-12 09:33:32
  from "/var/www/framework/Views/admin/pages/edit-page.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5aa6abdc78c379_74719444',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4034db0543c453c7ddc05ce9828bd498fece2e16' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/edit-page.tpl',
      1 => 1520872410,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5aa6abdc78c379_74719444 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_pathFor')) require_once '/var/www/framework/App/Lib/Smarty/Plugins/function.pathFor.php';
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_21017588445aa6abdc784960_49066596', "page_heading");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_12135061265aa6abdc787167_57362285', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, 'admin/admin_lte_base.tpl');
}
/* {block "page_heading"} */
class Block_21017588445aa6abdc784960_49066596 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_heading' => 
  array (
    0 => 'Block_21017588445aa6abdc784960_49066596',
  ),
);
public $append = 'true';
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    > CMS > <?php if ($_smarty_tpl->tpl_vars['page']->value) {?>Edit<?php } else { ?>Add<?php }?> Page
<?php
}
}
/* {/block "page_heading"} */
/* {block "content"} */
class Block_12135061265aa6abdc787167_57362285 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_12135061265aa6abdc787167_57362285',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div>
        <form action="<?php echo smarty_function_pathFor(array('name'=>'admin-page-save'),$_smarty_tpl);?>
" method="POST">
            <input type="hidden" name="page_id" value="<?php if ($_smarty_tpl->tpl_vars['page']->value->page_id) {
echo $_smarty_tpl->tpl_vars['page']->value->page_id;
} else { ?>null<?php }?>" />
            <div class="form-group">
                <input class="form-control" type="text" name="title" placeholder="Page title" value="<?php echo $_smarty_tpl->tpl_vars['page']->value->title;?>
" />
            </div>
            <div class="form-group">
                <input class="form-control" type="text" name="url_name" placeholder="Page URL" value="<?php echo $_smarty_tpl->tpl_vars['page']->value->url_name;?>
" />
            </div>
            <div class="form-group">
                <textarea name="content" id="pageBody"><?php echo $_smarty_tpl->tpl_vars['page']->value->content;?>
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
