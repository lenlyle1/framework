{extends file='./switcher.tpl'}

{block name="page_title"}Users{/block}

{block name="page_heading" append}
    > Users > {ucwords($userType)}
{/block}


{block name="search-bar"}
    <div class="partial half left">
        {if \Lib\User\User::can('add_'|cat:$userType|lower, $userPermissions)}
            <button id="add-user" class="whole-form_open btn btn-primary" data-toggle="modal" data-target="#myModal">Add New {if $userType == 'patients'}Patient{else}Staff Member{/if}</button>
        {/if}
    </div>
    <br>
    <div class="partial half right">
        {if \Lib\User\User::can('import_patients', $userPermissions) && $userType == 'patients'}
            <button id="import-users" class=" pure-button btn btn-success btn-sm" data-toggle="modal" data-target="#import">Import Patient List</button>
        {/if}
    </div>
    <br>
{/block}

{block name="content"}

    {if $userType}
        {include file="admin/pages/partials/user_"|cat:$userType|cat:".tpl"}
    {/if}

    {** IMPORTER **}
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
{/block}

{block name="footer_scripts" append}

    <script src="/assets/scripts/admin/users.js"></script>

{/block}
