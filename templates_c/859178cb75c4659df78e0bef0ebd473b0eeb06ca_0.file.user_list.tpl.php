<?php
/* Smarty version 3.1.31, created on 2018-01-08 05:43:41
  from "/var/www/framework/Views/admin/pages/user_list.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5a53758dda8f92_31681258',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '859178cb75c4659df78e0bef0ebd473b0eeb06ca' => 
    array (
      0 => '/var/www/framework/Views/admin/pages/user_list.tpl',
      1 => 1515419018,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:admin/pages/partials/users.tpl' => 1,
  ),
),false)) {
function content_5a53758dda8f92_31681258 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_597334785a53758dd9f9d6_54946770', "page_title");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_13311899355a53758dda1578_42995909', "page_heading");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_15792617215a53758dda40c4_05317393', "search-bar");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_3558890115a53758dda55e6_17896421', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_15116925755a53758dda7f18_62333918', "footer_scripts");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, './switcher.tpl');
}
/* {block "page_title"} */
class Block_597334785a53758dd9f9d6_54946770 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_title' => 
  array (
    0 => 'Block_597334785a53758dd9f9d6_54946770',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>
Users<?php
}
}
/* {/block "page_title"} */
/* {block "page_heading"} */
class Block_13311899355a53758dda1578_42995909 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page_heading' => 
  array (
    0 => 'Block_13311899355a53758dda1578_42995909',
  ),
);
public $append = 'true';
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    > Users > <?php echo ucwords($_smarty_tpl->tpl_vars['userType']->value);?>

<?php
}
}
/* {/block "page_heading"} */
/* {block "search-bar"} */
class Block_15792617215a53758dda40c4_05317393 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'search-bar' => 
  array (
    0 => 'Block_15792617215a53758dda40c4_05317393',
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
class Block_3558890115a53758dda55e6_17896421 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_3558890115a53758dda55e6_17896421',
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
class Block_15116925755a53758dda7f18_62333918 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'footer_scripts' => 
  array (
    0 => 'Block_15116925755a53758dda7f18_62333918',
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
