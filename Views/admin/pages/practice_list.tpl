{extends file='./switcher.tpl'}

{block name="page_heading" append}
    > Practices
{/block}

{block name="search-bar"}
    <button class="btn btn-primary add-new" data-toggle="modal" data-target="#practiceModal">Add New Practice</button>
{/block}

{block name="content"}

    <div class="box">
        <table class="grid display hover" data-class="practice">
            <thead>
                <tr class="practice-bg-active">
                    <th>Practice Name</th>
                    <th>Abbreviation</th>
                    <th>Condition</th>
                    <td></td>
                </tr>
            <thead>
            <tbody>
            {foreach $practices as $practice}
                <tr data-id="{$practice->practice_id}">
                    <td>{$practice->name}</td>
                    <td>{$practice->abbreviation}</td>
                    <td>{$practice->condition_name}</td>
                    <td class="edit">
                        <button class="edit-button btn btn-primary btn-med" data-id="{$practice->practice_id}" data-condition_id="{$practice->practice_condition}" data-name="{$practice->name}" data-abbreviation="{$practice->abbreviation}" data-toggle="modal" data-target="#practiceModal">Edit</button>
                    </td>
                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>

    <div class="modal fade"  id="practiceModal" role="dialog">
	    <div class="modal-dialog">
    		<div class="modal-content">
    		    <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">Add New Practice</h4>
                </div>
                <div class="modal-body">
                    <form id="practice-form">

                        <div class="row">
                            <div class="col-md-12 form-group">
                                <label for="name">Practice Name: </label>
                                <input class="form-control" type="text" name="name" id="name" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 form-group">
                                <label for="abbreviation">Abbreviation: </label>
                                <input class="form-control" type="text" name="abbreviation" id="abbreviation" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 form-group">
                                <label for="condition">Practice Condition: </label>
                                <select class="form-control" name="condition" id="condition">
                                    <option value=""> - Select - </option>
                                    {foreach $conditions as $id => $condition}
                                        <option value="{$condition->condition_lookup_id}">{$condition->condition_name}</option>
                                    {/foreach}
                                </select>
                            </div>
                        </div>

                    </form>
        			<div class="modal-footer">
                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal" id="cancel">Cancel</button>
                        <button type="button" class="btn btn-primary" id="save">Save</button>
        			</div>
                </div>
            </div>
        </div>
    </div>
{/block}

{block name="footer_scripts" append}

    <script src="/assets/scripts/admin/practice.js"></script>
    <script src="/assets/scripts/table-editor.js"></script>

{/block}
