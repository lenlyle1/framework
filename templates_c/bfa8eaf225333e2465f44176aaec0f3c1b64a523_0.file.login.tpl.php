<?php
/* Smarty version 3.1.31, created on 2018-01-09 15:25:48
  from "/var/www/framework/Views/admin/pages/login.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a554f7c2c6ff8_08442244',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bfa8eaf225333e2465f44176aaec0f3c1b64a523' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/login.tpl',
      1 => 1499702023,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a554f7c2c6ff8_08442244 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_10026265175a554f7c2bef19_37147996', "page_title");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_6309153855a554f7c2c0897_09930682', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, './switcher.tpl');
}
/* {block "page_title"} */
class Block_10026265175a554f7c2bef19_37147996 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_title' => 
  array (
    0 => 'Block_10026265175a554f7c2bef19_37147996',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>
Login<?php
}
}
/* {/block "page_title"} */
/* {block "content"} */
class Block_6309153855a554f7c2c0897_09930682 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_6309153855a554f7c2c0897_09930682',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <main role="main">
        <div class="wrap">
            <div class="container">
                <div class="login-box">
                    <div class="login-header">
                        <p>User Login</p>
                    </div>
                    <div class="login-fields">
                        <?php if ($_smarty_tpl->tpl_vars['errors']->value) {?>
                            <div class="form-error"><?php echo $_smarty_tpl->tpl_vars['errors']->value;?>
</div>
                        <?php }?>
                        <form id="login-form" style="padding:20px" method="post" action="/auth/signin">
                            <input id="username" name="username" type="text" placeholder="Username" autocapitalize="none" required>
                            <input id="password" name="password" type="password" placeholder="Password" required>
                            <a href="#" onclick="$('#login-form').submit();" class="pure-button" id="login-submit">Log In</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
<?php
}
}
/* {/block "content"} */
}
