{extends file='../site_base.tpl'}

{block name="head_extra"}
<link rel="stylesheet" href="https://cdn.datatables.net/v/dt/dt-1.10.13/kt-2.2.0/r-2.1.1/datatables.css">
<link rel="stylesheet" href="/assets/plugins/jquery.nutshell.css">
<link rel="stylesheet" href="/assets/styles/activities.css">
<link rel="stylesheet" href="/assets/styles/bootstrap-datepicker.standalone.css">


{/block}

{block name="content"}
<div id="content">
    <div id="activities">
        <ul class="nutshell">
            <li><a href="#follow-ups" class="nutshell-selected">{translate language=$language key="activities_follow_ups" text="Follow Ups"}</a></li>
            <li><a href="#action-plans">{translate language=$language key="activities_action_plans" text="Action Plans"}</a></li>
            <li><a href="#health-surveys">{translate language=$language key="activities_health_surveys" text="Health Surveys"}</a></li>
            <li><a href="#motivational-prompts">{translate language=$language key="activities_prompts" text="Motivational Prompts"}</a></li>
        </ul>
        <div class="nutshell-panels">
            <div id="follow-ups" class="panel">
                <div class='table_container follow_up_container'>
                    <h3 class="panel-head">{translate language=$language key="activities_follow_ups" text="Follow Ups"}</h3>
                    <div class="scroll">
                        <table class="followup_table pure-table pure-table-bordered">
                            <thead>
                                <tr>
                                    <th>{translate language=$language key="activities_date" text="Date"}</th>
                                    <th>{translate language=$language key="activities_day_of_week" text="Day Of Week"}</th>
                                    <th>{translate language=$language key="activities_time" text="Time"}</th>
                                    <th>{translate language=$language key="activities_clinician" text="Clinician"}</th>
                                    <th>{translate language=$language key="activities_method" text="Method"}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$followups key=key item=value}
                                    <tr>
                                        <td>{$value.date}</td>
                                        <td>{$value.day_of_week}</td>
                                        <td>{$value.hour}:{$value.minute} {$value.tod}</td>
                                        <td>{$value.clinician}</td>
                                        <td>{$value.method}</td>
                                    </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="action-plans" class="panel">
                <div class="table_container ap_container">
                    <h3 class="panel-head">{translate language=$language key="activities_action_plans" text="Action Plans"}</h3>
                    <div class="scroll">
                        <table class="ap_table pure-table pure-table-bordered">
                            <thead>
                                <tr>
                                    <th>{translate language=$language key="activities_goal" text="My Goal"}</th>
                                    <th>{translate language=$language key="activities_date_created" text="Date Created"}</th>
                                    <th>{translate language=$language key="activities_status" text="Status"}</th>
                                    <th>{translate language=$language key="activities_actions" text="Actions"}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {*<pre>{$action_plans|@var_dump}</pre>*}
                                {foreach from=$action_plans item=value}
                                    <tr>
                                        <td>{$value.my_goal}</td>
                                        <td>{$value.created_at}</td>
                                        <td>
                                            {if $value.status eq 'incomplete'}
                                                {$value.status}
                                            {/if}
                                        </td>
                                        <td>
                                            <div class="actions">
                                                <a class="pure-button pure-button-primary" href='/printActionPlan?action_plan_id={$value.batch_id}&mode=summary'>{translate language=$language key="activities_view_link" text="View"}</a>
                                                <a class="btnPrint pure-button pure-button-primary" href='/printActionPlan?action_plan_id={$value.batch_id}'>{translate language=$language key="activities_print_result_link" text="Print Results"}</a>
                                                <!-- <a class="pure-button pure-button-primary" href='/pdfexport?page_type=action_plan&item_id={$value.batch_id}'>Save as PDF</a> -->
                                                {if $value.status eq 'incomplete'}
                                                     <a class="pure-button pure-button-primary" href='/actionplan?action_plan_id={$value.batch_id}'>{translate language=$language key="activities_resume_link" text="Resume Plan"}</a>
                                                {else}
                                                    <a class="pure-button pure-button-primary" href='/actionplan?action_plan_id={$value.batch_id}'>{translate language=$language key="activities_update_link" text="Update Plan"}</a>
                                                {/if}
                                            </div>
                                        </td>
                                    </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="health-surveys" class="panel">
                <div class="table_container survey_container">
                    <h3 class="panel-head">{translate language=$language key="activities_health_surveys" text="Health Surveys"}</h3>
                    <div class="scroll">
                        <table class="survey_table pure-table pure-table-bordered">
                            <thead>
                                <tr>
                                    <th>{translate language=$language key="activities_date" text="Date"}</th>
                                    <th>{translate language=$language key="activities_actions" text="Actions"}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {if $surveys}
                                    {foreach from=$surveys item=value}
                                        <tr>
                                            <td>{$value.time_stamp}</td>
                                            <td>
                                                <div class="actions">
                                                    <!-- <a class='ap_summary save' href='/pdfexport?page_type=action_plan&item_id={$ap_id}'>Save</a>  -->
                                                    <!-- <a id="survey_pdf_save" class="survey_action pure-button pure-button-primary"  href='/pdfexport?page_type=survey&item_id={$value.batch_id}'>{translate language=$language key="save_pdf" text="Save as PDF"}</a> -->
                                                    <a class="btnPrint pure-button pure-button-primary" href='/printSurvey?survey_id={$value.batch_id}'>{translate language=$language key="print" text="Print"}</a>
                                                    <a class='pure-button pure-button-primary' href='surveyresults?batch_id={$value.batch_id}'>{translate language=$language key="view" text="View"}</a>
                                                    {if $value.completed eq null}
                                                        <a class='pure-button pure-button-primary survey_resume' data-page_number = '{$value.page_number}' data-batch_id='{$value.batch_id}' href='healthsurvey' class="pure-button pure-button-primary">{translate language=$language key="continue_survey" text="Continue Survey"}</a>
                                                    {/if}
                                                </div>
                                            </td>
                                        </tr>
                                    {/foreach}
                                {/if}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="motivational-prompts" class="panel">
                <div class="table_container motivational_container">
                    <h3 class="panel-head">{translate language=$language key="activities_prompts" text="Motivational Prompts"}</h3>
                    <div class="scroll">
                        <table class="motivation_table pure-table pure-table-bordered">
                            <thead>
                                <tr>
                                    <th>{translate language=$language key="activities_start_date" text="Start Date"}</th>
                                    <th>{translate language=$language key="moti_message_header" text="Message"}</th>
                                    <th>{translate language=$language key="moti_frequency" text="Frequency"}</th>
                                    <th>{translate language=$language key="moti_time_day" text="Time of day"}</th>
                                    <th>{translate language=$language key="moti_method" text="Received As"}</th>
                                    <th>{translate language=$language key="activities_actions" text="Actions"}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$motivation_prompts item=value}
                                    <tr>
                                        <td>{$value.start_date}</td>
                                        <td>
                                            {if $value.message|count_characters >= 15}
                                                <span class='moti_preview'>{$value.message|truncate:15:'':true}</span>
                                                <span class='moti_full hidden_obj'>{$value.message}</span>
                                                </br>
                                                <a class="moti_shower more" href='#'>Show More...</a>
                                             {else}
                                                 <span class='moti_full'>{$value.message}</span>
                                             {/if}
                                        </td>
                                        <td>{$value.frequency}</td>
                                        <td>{$value.start_time}</td>
                                        <td>{$value.receive_method}</td>
                                        <td>
                                            <div class="actions">
                                                <button class="motivation_button pure-button pure-button-primary pure-button pure-button-primary-primary">{translate language=$language key="activities_view_prompt" text="View Prompt"}</button>
                                            </div>
                                        </td>
                                        <td class='moti_modal_container hidden_obj'>
                                            <span class="hidden_obj moti_prompt">{$value.prompt_id}</span>
                                            <span class="hidden_obj moti_message">{$value.message}</span>
                                            <span class="hidden_obj moti_frequency">{$value.frequency}</span>
                                            <span class="hidden_obj moti_receive">{$value.receive_method}</span>
                                            <span class="hidden_obj moti_start_date">{$value.start_date}</span>
                                            <span class="hidden_obj moti_start_time">{$value.start_time}</span>

                                            {if $value.active eq 1}
                                                <span class="hidden_obj moti_switch moti_disable" data-prompt_id='{$value.prompt_id}'>{translate language=$language key="activities_disable_prompt" text="Disable Prompt"}</span>
                                            {else}
                                                <span class="hidden_obj moti_switch moti_enable" data-prompt_id='{$value.prompt_id}'>{translate language=$language key="activities_enable_prompt" text="Enable Prompt"}</span>
                                            {/if}
                                            <span class="hidden_obj moti_phone_number">{$value.user_mobile}</span>
                                            <span class="hidden_obj moti_email_addr">{$value.user_email}</span>
                                       </td>
                                    </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{/block}

{block name="modals"}
<div class="modal" data-remodal-id="display-motivational-msg">
    <header>
        <h3>{translate language=$language key="activities_moti_prompt" text="Motivational Prompt"}</h3>
        <button class="close" data-remodal-action="close"><i class="fa fa-times" aria-hidden="true"></i></button>
    </header>
    <section>
        <p>
            <span class="moti_modal_header">{translate language=$language key="activities_moti_message" text="Message"}:</span>
            <span class="moti_selector modal_message"></span>
        </p>
        <p>
            <span class="moti_modal_header">{translate language=$language key="activities_moti_frequency" text="Frequency"}:</span>
            <span class="moti_selector modal_frequency"></span>
        </p>
        <p>
            <span class="moti_modal_header">{translate language=$language key="activities_moti_receive" text="Receive Via"}:</span>
            <span class="moti_selector modal_receiveBy"></span>
        </p>
        <p>
            <span class="moti_modal_header">{translate language=$language key="activities_moti_start_at" text="Starts At"}:</span>
            <span class="moti_selector modal_startDate"></span>
        </p>
        <p>
            <span class="moti_modal_header">{translate language=$language key="activities_moti_time" text=" Start Time"}:</span>
            <span class="moti_selector modal_startTime"></span>
        </p>
        <p>
            <span class="moti_modal_header">{translate language=$language key="activities_moti_email" text=" Email"}:</span>
            <span class="moti_selector modal_email"></span>
        </p>
        <p>
            <span class="moti_modal_header">{translate language=$language key="activities_moti_phone" text=" Phone Number"}:</span>
            <span class="moti_selector modal_phone"></span>
        </p>
        <p>
            <span class="pure-button pure-button-primary pure-button pure-button-primary-primary moti_switch modal_toggle_button"></span>
            <span class="pure-button pure-button-primary pure-button pure-button-primary-primary moti_edit">Edit</span>
        </p>
    </section>
</div>

<div class="modal" data-remodal-id="display-motivational-edit">
    testo
    <span class='user_id_cont'>{$user_id}</span>
    wark!
</div>

{/block}

{block name="foot_extra"}

<script src="/assets/plugins/jquery.nutshell.js"></script>
<script src="/assets/scripts/footable.min.js"></script>
<script src="/assets/scripts/activities.js"></script>
<script src="/assets/scripts/printer.js"></script>
<script src="/assets/scripts/bootstrap-datepicker.js"></script>
{/block}
