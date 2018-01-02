{extends file='./switcher.tpl'}

{block name="page_heading" append}
    > Groups
{/block}

{block name="search-bar"}
    <button class="add-new btn btn-primary" data-toggle="modal" data-target="#groups">Add New Group</button>
{/block}

{block name="content"}

    <div class="box">
        <table class="grid display hover" data-class="practice">
            <thead class="groups-bg-active">
                <tr>
                    <th>Group Name</th>
                    <th>Group Leader</th>
                    <th>Number of Members</th>
                    <th>Group Description</th>
                    <th>Next Health Survey</th>
                    <th>Practice</th>
                </tr>
            </thead>
            <tbody>
            {foreach $groups as $group}
                <tr data-id="{$practice->practice_id}">
                    <td><a href="/admin/groups/{$group->group_id}">{$group->name}</a></td>
                    <td>{$group->leader_name}</td>
                    <td>{$group->num_members}</td>
                    <td>{$group->description}</td>
                    <td>{$group->next_survey}</td>
                    <td>{$group->practice_name}</td>
                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>

    <div>
        <div class="modal" id="groups">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel">Add New Group</h4>
                    </div>
                    <div class="modal-body">
                        <form id="group-form">

                            {if empty($user->practice_id) || \Lib\User\User::can('view_all_practices', $userPermissions)}
                                <div class="form-group">
                                    <label for="name">Practice: </label>
                                    <select class="form-control" name="practice_id" id="practice_id" />
                                        <option value=""> - Select - </option>
                                    {foreach $practices as $practice}
                                        <option value="{$practice->practice_id}">{$practice->name}</option>
                                    {/foreach}
                                    </select>
                                </div>
                            {else}
                                <input type="hidden" name="practice_id" value="{$user->practice_id}" />
                            {/if}
                            <div class="form-group">
                                <label for="name">Group Name: </label>
                                <input class="form-control" type="text" name="name" id="name" />
                            </div>
                            <div class="form-group">
                                <label for="name">Description: </label>
                                <input class="form-control" type="text" name="description" id="description" />
                            </div>
                            <div class="form-group">
                                <label for="name">Group Leader: </label>
                                <select class="form-control" name="group_leader_id" id="group_leader_id">
                                    <option value=""> - Select - </option>
                                    {foreach $staff as $staffUser}
                                        <option value="{$staffUser->user_id}" {if $staffUser->user_id == $group->group_leader_id} selected="selected"{/if}>{$staffUser->first_name} {$staffUser->last_name}</option>
                                    {/foreach}
                                </select>
                            </div>
                        </form>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default pull-left" data-dismiss="modal" id="cancel">Close</button>
                          <button type="button" class="btn btn-primary save" id="save" data-reload="true">Add Group</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

{/block}

{block name="footer_scripts" append}

    <script src="/assets/scripts/admin/group.js"></script>

{/block}
