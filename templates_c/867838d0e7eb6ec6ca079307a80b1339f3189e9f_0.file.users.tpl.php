<?php
/* Smarty version 3.1.31, created on 2018-01-12 13:28:33
  from "/var/www/framework/Views/admin/pages/partials/users.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a59288148db20_53055570',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '867838d0e7eb6ec6ca079307a80b1339f3189e9f' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/partials/users.tpl',
      1 => 1515792410,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a59288148db20_53055570 (Smarty_Internal_Template $_smarty_tpl) {
?>
    <div class="box">
        <table class="grid display hover">
            <thead>
                <tr class="staff-bg-active">
                    <th>Username</th>
                    <th>User Type</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['users']->value, 'listUser', false, 'id');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['listUser']->value) {
?>
                <tr>
                    <td><?php echo $_smarty_tpl->tpl_vars['listUser']->value->username;?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['listUser']->value->role_name;?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['listUser']->value->first_name;?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['listUser']->value->last_name;?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['listUser']->value->email_address;?>
</td>
                    <td class="edit"><button data-user-id="<?php echo $_smarty_tpl->tpl_vars['listUser']->value->user_id;?>
" class="edit-user btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">Edit</button></td>
                </tr>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

            </tbody>
        </table>
    </div>

    <div id="whole-form">
        <div class="modal" id="myModal">
	    <div class="modal-dialog">
		<div class="modal-content">
		    <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Edit User</h4>
            </div>
                <div class="modal-body">
                </div>
            </div>
        </div>
    </div>


<?php }
}
