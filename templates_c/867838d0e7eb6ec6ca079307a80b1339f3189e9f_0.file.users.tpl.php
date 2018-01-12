<?php
/* Smarty version 3.1.31, created on 2018-01-11 10:45:48
  from "/var/www/framework/Views/admin/pages/partials/users.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a57b0dc0c9281_84342596',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '867838d0e7eb6ec6ca079307a80b1339f3189e9f' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/partials/users.tpl',
      1 => 1515696340,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a57b0dc0c9281_84342596 (Smarty_Internal_Template $_smarty_tpl) {
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
                        <form id="user-details" method="post" onsubmit="return false;">
                            <div id="user-form">
                                <?php if (!empty($_smarty_tpl->tpl_vars['tzList']->value)) {?>
                                <div class="form-group">
                                    <label for="time_zone">Time zone: </label>
                                    <select name="time_zone" id="time_zone" class="form-control">
                                        <option value=""> - Select Timezone - </option>
                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['tzList']->value, 'tz');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['tz']->value) {
?>
                                        <option value="<?php echo $_smarty_tpl->tpl_vars['tz']->value->time_zone_id;?>
"<?php if ($_smarty_tpl->tpl_vars['tz']->value->time_zone_id == $_smarty_tpl->tpl_vars['user']->value->time_zone_id) {?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['tz']->value->time_zone_name;?>
</option>
                                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

                                    </select>
                                </div>
                                <?php }?>
                                <div class="form-group">

                                    <label for="first_name">User Role: </label>
                                    <select name="user_role" id="user_role" class="form-control">
                                        <option value=""> - Select Role - </option>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['roles']->value, 'role');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['role']->value) {
?>
                                        <option value="<?php echo $_smarty_tpl->tpl_vars['role']->value->role_id;?>
"><?php echo $_smarty_tpl->tpl_vars['role']->value->role_name;?>
</option>
                                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

                                    </select>
                                </div>
                               <fieldset>
                                    <legend>User Information</legend>

                                    <div id="names">
                                        <div class="col-md-6 form-group">
                                            <label for="first_name">First Name: </label>
                                            <input type="text" name="first_name" id="first_name" value="" class="required form-control" />
                                        </div>

                                        <div class="col-md-6 form-group">
                                            <label for="last_name">Last Name: </label>
                                            <input type="text" name="last_name" id="last_name" value="" class="required form-control" />
                                        </div>
                                    </div>

                                    <div class="col-md-12 form-group">
                                        <label for="email_address">Email Address: </label>
                                        <input type="text" name="email_address" id="email_address" value="" class=" form-control required" />
                                    </div>

                                    <div id="phone-numbers">
                                        <div class="col-md-6 form-group">
                                            <label>Office Phone: </label>
                                            <input type="text" name="home_phone" id="home_phone" value="" class=" form-control"/>
                                        </div>
                                        <div class="col-md-6 form-group">
                                            <label>Mobile Phone: </label>
                                            <input type="text" name="mobile_phone" id="mobile_phone" value="" class=" form-control" />
                                        </div>
                                    </div>

                                </fieldset>

                                <div id="login-info" class="col-md-6">
                                    <fieldset>
                                        <legend>Login Information</legend>

                                        <div class="form-group">
                                            <label for="username">Username: </label>
                                            <input type="text" name="username" id="username" value="" class="required form-control" />
                                        </div>
                                        <div class="form-group">
                                            <label for="password">Password: </label>
                                            <input type="text" name="password" id="password" value="" class="required form-control" />
                                        </div>
                                        <div class="form-group">
                                            <label for="confirm_password">Confirm Password: </label>
                                            <input type="text" name="confirm_password" id="confirm_password" value="" class="required form-control" />
                                        </div>
                                    </fieldset>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default pull-left" data-dismiss="modal" id="cancel">Close</button>
                      <button type="button" class="btn btn-primary" id="save">Save</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


<?php }
}
