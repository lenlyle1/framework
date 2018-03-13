<?php
/* Smarty version 3.1.31, created on 2018-01-05 12:33:44
  from "/var/www/framework/Views/pages/partials/user_details_form.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a4fe1283fbc35_60772224',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6cbe21786a46592c8bdf823e8a96674b1caa780f' => 
    array (
      0 => '/var/www/framework/Views/pages/partials/user_details_form.tpl',
      1 => 1515184407,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a4fe1283fbc35_60772224 (Smarty_Internal_Template $_smarty_tpl) {
?>

<form id="userForm" method="post" style="padding:20px">

    <div class="form-group">
        <label for="username">Username</label>
        <input type="email" class="form-control" id="username" aria-describedby="username" placeholder="Enter username">
    </div>
    <div class="form-group">
        <label for="email">Email address</label>
        <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
    </div>

    <div class="form-group">
        <label for="confirmEmail">Confirm Email address</label>
        <input type="email" class="form-control" id="confirmEmail" aria-describedby="emailHelp" placeholder="Confirm email">
    </div>

    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" placeholder="Password">
    </div>

    <div class="form-group">
        <label for="confirmPassword">Confirm Password</label>
        <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm Password">
    </div>
    <button type="submit" id="signUp" class="btn btn-primary">Submit</button>
</form>
<?php }
}
