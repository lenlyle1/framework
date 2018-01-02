
        <div id="overdue-followup-tab">
            <h3>Overdue Follow Ups</h3>
            <div class="scroll box">

            {if $overdue_followups}
                <table class="grid followup_table pure-table pure-table-bordered display hover">
                    <thead>
                        <tr>
                            <th>Date</th>
                            {if \Lib\User\User::can('view_patient_phi', $userPermissions)}
                                <th>MRN</th>
                                <th>Who</th>
                            {else}
                                <th>User Key</th>
                            {/if}
                            <th>With</th>
                            <th>Method</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$overdue_followups key=key item=value}
                            {if !$value['completed_at']}
                                <tr class="overdue {if $value['future_followups'] == 0}reschedule-required{/if}">
                                    <td>{$value.date->format('m/d/Y g:i a T')}</td>
                                    {if \Lib\User\User::can('view_patient_phi', $userPermissions)}
                                        <td><a href="/admin/user/patient/{$value.patient_id}">{$value.mrn}</a></td>
                                        <td>{$value.who}</td>
                                    {else}
                                        <td><a href="/admin/user/patient/{$value.patient_id}">{$value.unique_identifier}</a></td>
                                    {/if}
                                    <td>{$value.with}</td>
                                    <td>{$value.method}</td>
                                    <td>
                                        <button class="btn btn-primary followup-action" data-toggle="modal" data-target="#followupActionModal" data-followup_id="{$value['followup_id']}" data-patient_id="{$value['patient_id']}">Actions</button>
                                        <button class="btn btn-primary followup-action" data-toggle="modal" data-target="#followupActionBasicModal" data-followup_id="{$value['followup_id']}" data-patient_id="{$value['patient_id']}" data-copy="true">Copy Text</button>
                                    </td>
                                </tr>
                            {/if}
                        {/foreach}
                    </tbody>
                </table>
                {else}
                    <div class="col-md-12">
                        No overdue followups at this time
                    </div>
                {/if}
            </div>
        </div>

        <div id="followups-tab">
            <h3>Follow Ups</h3>
            <div class="scroll box">

            {if $pending_followups}
                <table class="grid followup_table pure-table pure-table-bordered display hover">
                    <thead>
                        <tr>
                            <th>Date</th>
                            {if \Lib\User\User::can('view_patient_phi', $userPermissions)}
                                <th>MRN</th>
                                <th>Who</th>
                            {else}
                                <th>User Key</th>
                            {/if}
                            <th>With</th>
                            <th>Method</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$pending_followups key=key item=value}
                        {if !$value['completed_at']}
                        <tr{if $smarty.now > $value.date|date_format:'U'} class="overdue"{/if}>
                            <td>{$value.date->format('m/d/Y g:i a T')}</td>
                            {if \Lib\User\User::can('view_patient_phi', $userPermissions)}
                                <td><a href="/admin/user/patient/{$value.patient_id}">{$value.mrn}</a></td>
                                <td>{$value.who}</td>
                            {else}
                                <td><a href="/admin/user/patient/{$value.patient_id}">{$value.unique_identifier}</a></td>
                            {/if}
                            <td>{$value.with}</td>
                            <td>{$value.method}</td>
                            <td>
                                <button class="btn btn-primary followup-action" data-toggle="modal" data-target="#followupActionModal" data-followup_id="{$value['followup_id']}" data-patient_id="{$value['patient_id']}">Actions</button>
                                <button class="btn btn-primary followup-action" data-toggle="modal" data-target="#followupActionBasicModal" data-followup_id="{$value['followup_id']}" data-patient_id="{$value['patient_id']}" data-copy="true">Copy Text</button>
                            </td>
                        </tr>
                        {/if}
                        {/foreach}
                    </tbody>
                </table>
                {else}
                    <div class="col-md-12">
                        No followups at this time
                    </div>
                {/if}
            </div>
        </div>
