{extends file='./switcher.tpl'}

{block name="page_heading" append}
    > Groups > {$group->name}
{/block}

{block name="search-bar"}

{/block}

{block name="content"}
    <div id="group-tabs" class="ui-helper-clearfix">
        <ul>
            <li><a href="#group-edit-tab">Edit Group</a></li>
            <li><a href="#group-members-tab">Members</a></li>
            <li><a href="#group-notes-tab">Notes</a></li>
            <li><a href="#group-messages-tab">Messages</a></li>
            <li><a href="#group-surveys-tab">Surveys</a></li>
        </ul>
        <div id="group-edit-tab">
            <h1 class="groups-bg-active">
                <div class="partial half left"><legend>Edit Group</legend></div>
                <div class="partial half right">
                    <button id="edit-group" class="btn btn-primary">Edit Group</button>
                    <button id="cancel-group" class="btn btn-primary" style="display: none;">Cancel</button>
                    <button id="update-group" class="btn btn-primary" style="display: none;">Save Group</button>
                </div>
            </h1>
            <div class="block" id="group-editor" style="display: none;">
                <form id="group-form">
                    <input type="hidden" name="group_id" value="{$group->group_id}" />
                    <input type="hidden" name="practice_id" value="{$group->practice_id}" />

                    <div class="partial half">
                        <div class="form-group">
                            <label for="name">Group Name: </label>
                            <input type="text" name="name" id="name" value="{$group->name}" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="group_leader_id">Group Leader: </label>
                            <select name="group_leader_id" id="group_leader_id" class="form-control" >
                                <option value=""> - Select - </option>
                                {foreach $staff as $staffUser}
                                    <option value="{$staffUser->user_id}" {if $staffUser->user_id == $group->group_leader_id} selected="selected"{/if}>{$staffUser->first_name} {$staffUser->last_name}</option>
                                {/foreach}
                            </select>
                        </div>
                    </div>
                    <div class="partial half">
                        <div class="partial">
                            <label for="description">Description: </label>
                        </div>
                        <div class="form-group">
                            <textarea name="description" id="description" class="form-control" rows="3">{$group->description}</textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="block" id="group-values">
                <form id="group-form">
                    <input type="hidden" name="group_id" value="{$group->group_id}" />
                    <input type="hidden" name="practice_id" value="{$group->practice_id}" />

                    <div class="col-md-6">
                        <div>
                            <label for="name">Group Name: </label>
                            <div class="partial" id="group-name-text">{$group->name}</div>
                        </div>
                        <div>
                            <label for="group_leader_id">Group Leader: </label>
                            <div class="partial" id="group-leader-text">{$group->leader_name}</div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div>
                            <label for="description">Description: </label>
                            <div class="partial" id="group-description-text">{$group->description}</div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div id="group-members-tab">
            <h1 class="groups-bg-active">
                <div class="partial half left"><legend>Members</legend></div>
                <div class="partial half right">
                    <button class="add-item member-form_open btn btn-primary" data-item-type="member" data-toggle="modal" data-target="#member-form">Add Member to Group</button>
                    <button class="export-button btn btn-primary" data-type="members">Export</button>
                </div>
            </h1>
            <div class="box">
                {if !empty($members)}
                    <table class="grid display hover">
                        <thead class="">
                            <tr>
                                <th>MRN</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Date of Birth</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $members as $member}
                                <tr>
                                    <td>{$member->mrn}</td>
                                    <td>{$member->first_name}</td>
                                    <td>{$member->last_name}</td>
                                    <td>{$member->date_of_birth|date_format:"%m/%d/%Y"}</td>
                                    <td><button class='remove-member btn btn-primary' data-user_id="{$member->user_id}" data-group_id="{$group->group_id}">Remove</button></td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                {else}
                    No Members added.
                {/if}
            </div>
        </div>

        <div id="group-notes-tab">
            <h1 class="groups-bg-active">
                <div class="partial half left"><legend>Notes</legend></div>
                <div class="partial half right">
                    <button class="add-item notes-form_open btn btn-primary" data-item-type="note" data-toggle="modal" data-target="#notes-form">Add New Note</button>
                    <button class="export-button btn btn-primary" data-type="notes">Export</button>
                </div>
            </h1>
            <div class="box">
                {if !empty($notes)}
                    <table class="grid display hover">
                        <thead class="">
                            <tr>
                                <th class="col-md-2">Posted by</th>
                                <th class="col-md-1">Date</th>
                                <th class="col-md-3">Title</th>
                                <th class="col-md-4">Body</th>
                                <th class="col-md-1">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $notes as $note}
                                <tr>
                                    <td>{if !empty($note->author)}{$note->author}{else}{$note->username}{/if}</td>
                                    <td>{$note->date_added|date_format:"%m/%d/%Y"}</td>
                                    <td>{$note->note_title}</td>
                                    <td>{$note->note_body}</td>
                                    <td><button class='remove-note btn btn-primary' data-group_note_id="{$note->group_note_id}}">Delete</button></td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                {else}
                    No notes added yet.
                {/if}
            </div>
        </div>

        <div id="group-messages-tab">
            <h1 class="groups-bg-active">
                <div class="partial half left"><legend>Messages</legend></div>
                <div class="partial half right">
                    <button class="add-item message-form_open btn btn-primary" data-item-type="message" data-toggle="modal" data-target="#message-form">Send Group Message</button>
                    <button class="export-button btn btn-primary" data-type="messages">Export</button>
                </div>
            </h1>
            <div class="">
                {if !empty($messages)}
                    <table class="grid display hover">
                        <thead class="">
                            <tr>
                                <th class="col-md-2">Sent by</th>
                                <th class="col-md-1">Date</th>
                                <th class="col-md-3">Subject</th>
                                <th class="col-md-6">Message</th>
                               {*  <th>Actions</th> *}
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $messages as $message}
                                <tr>
                                    <td>{$message->posted_by}</td>
                                    <td>{$message->date_sent|date_format:"%m/%d/%Y"}</td>
                                    <td>{$message->subject}</td>
                                    <td>{$message->message}</td>
                                    {* <td><button class='remove-note btn btn-primary' data-note_id="{$member->group_note_id}}">Remove</button></td> *}
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                {else}
                    No notes added yet.
                {/if}
            </div>
        </div>

        <div id="group-surveys-tab">
            {if !empty($surveys)}
                <table class="grid display hover">
                    <thead class="">
                        <tr>
                            <th class="col-md-3">Date</th>
                            <th class="col-md-1">User</th>
                            <th class="col-md-6">Status</th>
                           {*  <th>Actions</th> *}
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $surveys as $survey}
                            <tr>
                                <td>{$survey->created_at|date_format:"%m/%d/%Y"}</td>
                                <td>{$survey->user}</td>
                                <td>{$survey->status}</td>
                                {* <td><button class='remove-note btn btn-primary' data-note_id="{$member->group_note_id}}">Remove</button></td> *}
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            {else}
                No surveys added yet.
            {/if}
        </div>
        {* Member popup *}
        <div class="modal" id="member-form">
        <div class="modal-dialog">
            <div class="modal-content">
        	<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Add Member to Group</h4>
            </div>
            <div class="modal-body">
        	    <form id="member-form-items" method="post" onsubmit="return false;">
        		<input type="hidden" name="group_id" value="{$group->group_id}" />
                <div class="form-group">
        			<select name="user_id" id="add-users" class="form-control">
        			    <option value=""> - Select User - </option>
        			    {foreach $practiceUsers as $practiceUser}
        				<option value="{$practiceUser->user_id}">{$practiceUser->first_name} {$practiceUser->last_name}</option>
        			    {/foreach}
        			</select>
                </div>
        	    </form>
        	    <div class="modal-footer">
                          <button type="button" class="btn btn-default pull-left" data-dismiss="modal" id="cancel">Cancel</button>
                          <button type="button" class="btn btn-primary save" data-type="member" id="save">Add</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {* Note popup *}
        <div class="modal" id="notes-form">
        <div class="modal-dialog">
            <div class="modal-content">
        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel">Add Note - {$group->name}</h4>
                    </div>
                    <div class="modal-body">
                        <form id="note-form-items" method="post" onsubmit="return false;">
                            <input type="hidden" name="group_id" value="{$group->group_id}" />
                            <input type="hidden" name="user_id" value="{$user->user_id}" />
                            <div class="form-group">
                                <label for="username">Title: </label>
                                <input type="text" name="note_title" id="note_subject" value="" class="required form-control" />
                            </div>
                            <div class="form-group">
                                <label for="username">Body: </label>
                                <textarea name="note_body" id="note_body" class="required form-control" rows="3" ></textarea>
                            </div>
                        </form>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default pull-left" data-dismiss="modal" id="cancel">Cancel</button>
                          <button type="button" class="btn btn-primary save" id="save" data-type="note">Save</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {* Message popup *}
        <div class="modal" id="message-form">
        <div class="modal-dialog">
            <div class="modal-content">
        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel">Send Group Message</h4>
                    </div>
                    <div class="modal-body">
                        <form id="message" method="post">
                            <input type="hidden" name="group_id" value="{$group->group_id}" />
                            <input type="hidden" name="user_id" value="{$user->user_id}" />
                            <div class="form-group">
                                <label for="username">Subject: </label>
                                <input type="text" name="subject" id="subject" value="" class="required form-control" />
                            </div>
                            <div class="form-group">
                                <label for="username">Message: </label>
                                <textarea name="message" id="message" class="required form-control" rows="5" ></textarea>
                            </div>
                        </form>
        	    <div class="modal-footer">
                          <button type="button" class="btn btn-default pull-left" data-dismiss="modal" id="cancel">Cancel</button>
                          <button type="button" class="btn btn-primary save" id="save" data-type="message">Save</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}

{block name="footer_scripts" append}

    <script src="/assets/scripts/admin/group.js"></script>
    <script src="/assets/scripts/admin/group-member.js"></script>
    <script src="/assets/scripts/admin/group-notes.js"></script>
    <script src="/assets/scripts/admin/group-messages.js"></script>


{/block}
