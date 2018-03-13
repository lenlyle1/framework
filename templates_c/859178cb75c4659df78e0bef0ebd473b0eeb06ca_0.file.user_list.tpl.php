<?php
/* Smarty version 3.1.31, created on 2018-01-12 11:25:36
  from "/var/www/framework/Views/admin/pages/user_list.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a590bb004e5d6_09144506',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '859178cb75c4659df78e0bef0ebd473b0eeb06ca' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/user_list.tpl',
      1 => 1515785133,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:admin/pages/partials/users.tpl' => 1,
  ),
),false)) {
function content_5a590bb004e5d6_09144506 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_4949195755a590bb0046975_70637891', "page_title");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_15102474675a590bb0048203_42963916', "page_heading");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_7871631515a590bb004a287_16298107', "search-bar");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_21407757405a590bb004b323_33906909', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_16785938955a590bb004d929_26503329', "footer_scripts");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, 'admin/admin_lte_base.tpl');
}
/* {block "page_title"} */
class Block_4949195755a590bb0046975_70637891 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_title' => 
  array (
    0 => 'Block_4949195755a590bb0046975_70637891',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>
Users<?php
}
}
/* {/block "page_title"} */
/* {block "page_heading"} */
class Block_15102474675a590bb0048203_42963916 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_heading' => 
  array (
    0 => 'Block_15102474675a590bb0048203_42963916',
  ),
);
public $append = 'true';
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    Users > <?php echo ucwords($_smarty_tpl->tpl_vars['userType']->value);?>

<?php
}
}
/* {/block "page_heading"} */
/* {block "search-bar"} */
class Block_7871631515a590bb004a287_16298107 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'search-bar' => 
  array (
    0 => 'Block_7871631515a590bb004a287_16298107',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="col-md-6">
        Users
    </div>
    <div class="col-md-6">
        Roles
    </div>
<?php
}
}
/* {/block "search-bar"} */
/* {block "content"} */
class Block_21407757405a590bb004b323_33906909 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_21407757405a590bb004b323_33906909',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


        <?php $_smarty_tpl->_subTemplateRender("file:admin/pages/partials/users.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


    
    <div id="importer">
	<div class="modal" id="import">
	    <div class="modal-dialog">
		<div class="modal-content">
		    <div class="modal-header">
		       <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel">Import Patients</h4>
                    </div>
                    <div class="modal-body">
                        <p>Please select file for import.</p>

                        <p>Import sheet must be a CSV file. <a href="/assets/cth_patient_upload_sheet.csv">Click here</a> to download the template.</p>

                        <div id="upload-box">
                            <form id="upload-form" method="post" enctype="multipart/form-data">
                                Select CSV to upload:
                                <input type="file" name="fileToUpload" id="fileToUpload">
                                <button id="upload-button" class="btn" value="Upload CSV">Upload</button>
                            </form>
                        </div>
                        <div id="upload-response"></div>
                    </div>
		    <div class="modal-footer">
                      <button type="button" class="btn btn-default pull-left" data-dismiss="modal" id="cancel">Close</button>
                    </div>
		</div>
	    </div>
	</div>
    </div>
<?php
}
}
/* {/block "content"} */
/* {block "footer_scripts"} */
class Block_16785938955a590bb004d929_26503329 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'footer_scripts' => 
  array (
    0 => 'Block_16785938955a590bb004d929_26503329',
  ),
);
public $append = 'true';
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <?php echo '<script'; ?>
 src="/assets/scripts/admin/users.js"><?php echo '</script'; ?>
>

<?php
}
}
/* {/block "footer_scripts"} */
}
