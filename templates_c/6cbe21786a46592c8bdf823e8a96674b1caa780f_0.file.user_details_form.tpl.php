<?php
/* Smarty version 3.1.31, created on 2017-12-29 10:09:31
  from "/var/www/framework/Views/pages/partials/user_details_form.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a4684dbb229b5_80908598',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6cbe21786a46592c8bdf823e8a96674b1caa780f' => 
    array (
      0 => '/var/www/framework/Views/pages/partials/user_details_form.tpl',
      1 => 1499702023,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a4684dbb229b5_80908598 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_translate')) require_once '/var/www/framework/App/Lib/Smarty/Plugins/function.translate.php';
echo var_dump($_smarty_tpl->tpl_vars['errors']->value);?>

<form id="userForm" class="pure-form step" action="<?php if ($_smarty_tpl->tpl_vars['basename']->value == 'userprofile') {?>/user/profile<?php } else { ?>/user/signup<?php }?>" method="post" style="padding:20px">
    <input type="hidden" name="mode" value="<?php if ('basename' == 'userprofile') {?>update<?php } else { ?>add<?php }?>" />

        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"first_name",'text'=>"First Name"),$_smarty_tpl);?>
</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="first_name" id="first_name" value="<?php if ($_smarty_tpl->tpl_vars['old']->value['first_name']) {
echo $_smarty_tpl->tpl_vars['old']->value['first_name'];
} else {
echo $_smarty_tpl->tpl_vars['user']->value['first_name'];
}?>" <?php if ($_smarty_tpl->tpl_vars['errors']->value['first_name']) {?>class="error"<?php }?>>
                </label>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['errors']->value['first_name'], 'error');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['error']->value) {
?>
                    <div class="pure-u-1 form-error"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

            </div>
        </div>

        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"last_name",'text'=>"Last Name"),$_smarty_tpl);?>
</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="last_name" id="last_name" value="<?php if ($_smarty_tpl->tpl_vars['old']->value['last_name']) {
echo $_smarty_tpl->tpl_vars['old']->value['last_name'];
} else {
echo $_smarty_tpl->tpl_vars['user']->value['last_name'];
}?>" <?php if ($_smarty_tpl->tpl_vars['errors']->value['last_name']) {?>class="error"<?php }?>>
                </label>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['errors']->value['last_name'], 'error');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['error']->value) {
?>
                    <div class="pure-u-1 form-error"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

            </div>
        </div>

        <div class="pure-g ">
            <div class="pure-u-3-8">
                <p class="question"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"email",'text'=>"Email"),$_smarty_tpl);?>
</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="email_address" id="email_address" value="<?php if ($_smarty_tpl->tpl_vars['old']->value['email_address']) {
echo $_smarty_tpl->tpl_vars['old']->value['email_address'];
} else {
echo $_smarty_tpl->tpl_vars['user']->value['email_address'];
}?>" <?php if ($_smarty_tpl->tpl_vars['errors']->value['email_address']) {?>class="error"<?php }?>>
                </label>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['errors']->value['email_address'], 'error');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['error']->value) {
?>
                    <div class="pure-u-1 form-error"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

            </div>
        </div>

        <div class="pure-g ">
            <div class="pure-u-3-8">
                <p class="question"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"confirm_email",'text'=>"Confirm Email"),$_smarty_tpl);?>
</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="email_address" id="email_address" value="<?php if ($_smarty_tpl->tpl_vars['old']->value['confirm_email_address']) {
echo $_smarty_tpl->tpl_vars['old']->value['confirm_email_address'];
}?>" <?php if ($_smarty_tpl->tpl_vars['errors']->value['confirm_email_address']) {?>class="error"<?php }?>>
                </label>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['errors']->value['confirm_email_address'], 'error');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['error']->value) {
?>
                    <div class="pure-u-1 form-error"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

            </div>
        </div>

        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"username",'text'=>"username"),$_smarty_tpl);?>
</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="username" id="username" value="<?php if ($_smarty_tpl->tpl_vars['old']->value['username']) {
echo $_smarty_tpl->tpl_vars['old']->value['username'];
} else {
echo $_smarty_tpl->tpl_vars['user']->value['username'];
}?>" <?php if ($_smarty_tpl->tpl_vars['errors']->value['username']) {?>class="error"<?php }?>>
                </label>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['errors']->value['username'], 'error');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['error']->value) {
?>
                    <div class="pure-u-1 form-error"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

            </div>
        </div>

        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"password",'text'=>"Password"),$_smarty_tpl);?>
</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="password" id="password" value="<?php if ('basename' != 'userprofile' && $_smarty_tpl->tpl_vars['old']->value['password']) {
echo $_smarty_tpl->tpl_vars['old']->value['password'];
}?>" <?php if ($_smarty_tpl->tpl_vars['errors']->value['password']) {?>class="error"<?php }?>>
                </label>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['errors']->value['password'], 'error');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['error']->value) {
?>
                    <div class="pure-u-1 form-error"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

            </div>
        </div>

        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"confirm_password",'text'=>"Confirm Password"),$_smarty_tpl);?>
</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="confirm_password" id="confirm_password" value="<?php if ('basename' != 'userprofile' && $_smarty_tpl->tpl_vars['old']->value['confirm_password']) {
echo $_smarty_tpl->tpl_vars['old']->value['confirm_password'];
}?>" <?php if ($_smarty_tpl->tpl_vars['errors']->value['confirm_password']) {?>class="error"<?php }?>>
                </label>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['errors']->value['confirm_password'], 'error');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['error']->value) {
?>
                    <div class="pure-u-1 form-error"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

            </div>
        </div>

        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"gender",'text'=>"Gender"),$_smarty_tpl);?>
</p>
            </div>
            <div class="pure-u-4-6">
                <select name="gender" <?php if ($_smarty_tpl->tpl_vars['errors']->value['state_id']) {?>style="border: 1px solid #f00;"<?php }?>>
                    <option value=""> -- <?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"select",'text'=>"Select"),$_smarty_tpl);?>
 -- </option>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['genders']->value, 'gender');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['gender']->value) {
?>
                    <option value="<?php echo $_smarty_tpl->tpl_vars['gender']->value->gender_id;?>
" <?php if ($_smarty_tpl->tpl_vars['gender']->value->gender_id == $_smarty_tpl->tpl_vars['old']->value['gender']) {?>selected="selected"<?php } elseif ($_smarty_tpl->tpl_vars['gender']->value->gender_id == $_smarty_tpl->tpl_vars['user']->value['gender']) {?>selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['gender']->value->gender;?>
</option>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

                </select>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['errors']->value['gender'], 'error');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['error']->value) {
?>
                    <div class="pure-u-1 form-error"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

            </div>
        </div>


        <div class="pure-g">
            <div class="pure-u-3-8">
                <p class="question"><?php echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"birth_year",'text'=>"Birth year"),$_smarty_tpl);?>
</p>
            </div>
            <div class="pure-u-5-8">
                <label class="safe">
                    <input type="text" name="birth_year" id="birth_year" value="<?php if ('basename' != 'userprofile' && $_smarty_tpl->tpl_vars['old']->value['birth_year']) {
echo $_smarty_tpl->tpl_vars['old']->value['birth_year'];
}?>" <?php if ($_smarty_tpl->tpl_vars['errors']->value['birth_year']) {?>class="error"<?php }?>>
                </label>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['errors']->value['birth_year'], 'error');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['error']->value) {
?>
                    <div class="pure-u-1 form-error"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

            </div>
        </div>

        <div class="pure-g">
            <div class="pure-u-1">
                <button type="button" onclick="document.getElementById('userForm').submit();" id="next" class="pure-button"><?php if ('basename' == 'userprofile') {
echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"update_profile",'text'=>"Update Profile"),$_smarty_tpl);
} else {
echo smarty_function_translate(array('language'=>$_smarty_tpl->tpl_vars['language']->value,'key'=>"signup",'text'=>"Signup"),$_smarty_tpl);
}?></button>
            </div>
        </div>
    </form>
<?php }
}
