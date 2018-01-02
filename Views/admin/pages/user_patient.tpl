{extends file='./switcher.tpl'}

{block name="page_title"}Users{/block}

{block name="page_heading" append}
    > {ucwords($patient->role_name)} >  {if \Lib\User\User::can('view_patient_phi', $userPermissions)}{$patient->first_name} {$patient->last_name}{else}{$patient->unique_identifier}{/if}

{/block}

{block name="head_extra"}
    <link rel="stylesheet" href="https://cdn.datatables.net/v/dt/dt-1.10.13/kt-2.2.0/r-2.1.1/datatables.css">
    <link rel="stylesheet" href="/assets/plugins/jquery.nutshell.css">
    <link rel="stylesheet" href="/assets/styles/activities.css">
{/block}

{block name="content"}
    <div class="block">
        <div class="patients-bg-active header-bar">
            <div class="row">
                {if \Lib\User\User::can('view_patient_phi', $userPermissions)}
                <div class="col-md-6">
                    <button id="edit-user" class="btn btn-primary">Edit Patient</button>
                    <button id="cancel-user" class="btn btn-primary" style="display: none;">Cancel</button>
                    <button id="update-user" class="btn btn-primary" style="display: none;">Save Patient</button>
                </div>
                {/if}
                {if \Lib\User\User::can('login_as_patient', $userPermissions)}
                <div class="col-md-6">
                    <button data-user_id="{$patient->user_id}" class="login-user whole-form_open btn btn-primary btn-sm">Login As</button>
                </div>
                {/if}
            </div>
        </div>
        <div id="user-form" style="">
            <form id="user-details" method="post" onsubmit="return false;">
                <input type="hidden" name="user_role" value="patient" />
                <input type="hidden" name="user_id" value="{$patient->user_id}" />
                <input type="hidden" name="practice_id" value="{$patient->practice_id}" />
                <input type="hidden" name="user_profile_id" value="{$patient->user_profile_id}" />
                <input type="hidden" name="user_patient_details_id" value="{$patient->user_patient_details_id}" />
                <fieldset>
                {if \Lib\User\User::can('view_patient_phi', $userPermissions)}
                    <legend>User Information</legend>
                        <div class="patient-only">
                            {* <div class="partial half"> *}
                            <div class="row">
                                <div class="col-md-4 form-group">
                                    <div class="col-md-4">
                                        <label for="mrn">Patient MRN: </label>
                                    </div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" name="mrn" id="mrn" value="{$patient->mrn}" class="required" disabled="disabled" />
                                    </div>
                                </div>
                                <div class="col-md-4 form-group">
                                    <div class="col-md-4">
                                        <label for="date_of_birth">Date of Birth: </label>
                                    </div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" name="date_of_birth" id="date_of_birth" style="width:11rem" class="required" value="{$patient->date_of_birth|date_format:"%m/%d/%Y"}" disabled="disabled" />
                                    </div>
                                </div>
                                <div class="col-md-4 form-group">
                                    <div class="col-md-4">
                                        <label for="gender_id">Gender: </label>
                                    </div>
                                    <div class="col-md-8">
                                        <select class="form-control" name="gender_id" class="required" id="gender_id" disabled="disabled">
                                            <option value="">Select</option>
                                            {foreach $genders as $id => $gender}
                                                <option value="{$gender->gender_id}"{if $gender->gender_id == $patient->gender_id} selected="selected"{/if}>{$gender->gender}</option>
                                            {/foreach}
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">

                                <div class="col-md-4 form-group">
                                    <div class="col-md-4">
                                        <label for="time_zone">Time zone: </label>
                                    </div>
                                    <div class="col-md-8">
                                        <select class="form-control" name="time_zone" id="time_zone" disabled="disabled">
                                            <option value=""> - Select - </option>
                                        {foreach $tzList as $tz}
                                            <option value="{$tz->time_zone_id}"{if $tz->time_zone_id == $patient->time_zone_id} selected="selected"{/if}>{$tz->time_zone_name}</option>
                                        {/foreach}
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4 form-group">
                                    <div class="col-md-4">
                                        <div id="height"></div>
                                        <label for="height_feet">Height:</label>
                                    </div>
                                    <div class="col-md-4 form group">
                                        <select class="form-control" name="height_feet" id="height_feet" disabled="disabled">
                                            <option value="">Feet</option>
                                            {for $feet=0 to 8}
                                            <option value="{$feet}" {if $patient->height && $feet == $patient->height_feet}selected="selected"{/if}>{$feet}</option>
                                            {/for}
                                        </select>
                                    </div>

                                    <div class="col-md-4 form group">
                                        <select class="form-control" name="height_inches" disabled="disabled">
                                            <option value="">Inches</option>
                                            {for $inches=0 to 12}
                                            <option value="{$inches}" {if $patient->height && $inches == $patient->height_inches}selected="selected"{/if}>{$inches}</option>
                                            {/for}
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4 form-group">
                                    <div class="col-md-4">
                                        <label for="language">Language: </label>
                                    </div>
                                    <div class="col-md-8">
                                        <select class="form-control" name="language" disabled="disabled">
                                        {foreach $languages as $language}
                                            <option value="{$language->language_id}"{if $patient->language_id == $language->language_id} selected="selected"{/if}>{$language->language}</option>
                                        {/foreach}
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>





                        <div id="names" class="row">
                            <div class="col-md-4 form-group">
                                <div class="col-md-4">
                                    <label for="first_name">First Name: </label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" name="first_name" id="first_name" value="{$patient->first_name}" class="required"  disabled="disabled" />
                                </div>
                            </div>

                            <div class="col-md-4 form-group">
                                <div class="col-md-4">
                                    <label for="last_name">Last Name: </label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" name="last_name" id="last_name" value="{$patient->last_name}" class="required"  disabled="disabled" />
                                </div>
                            </div>
                            <div class="col-md-4 form-group">
                                <div class="col-md-4">
                                    <label>Home Phone: </label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" name="home_phone" id="home_phone" value="{$patient->home_phone}" disabled="disabled" />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 form-group">
                                <div class="col-md-4">
                                    <label for="email_address">Email Address: </label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" name="email_address" id="email_address" value="{$patient->email_address}" class="long required" disabled="disabled" />
                                </div>
                            </div>

                            <div id="confirm-email-holder" class="col-md-4 form-group" style="visibility: hidden;">
                                <div class="col-md-4">
                                    <label for="confirm_email">Confirm Email: </label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" name="confirm_email" id="confirm_email" value="" class="long required" disabled="disabled" />
                                </div>
                            </div>
                            <div class="col-md-6 form-group">
                                <div class="col-md-4">
                                    <label>Mobile Phone: </label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" name="mobile_phone" id="mobile_phone" value="{$patient->mobile_phone}" disabled="disabled" />
                                </div>
                            </div>
                        </div>

                </fieldset>

                <div class="col-md-6" id="login-info">
                    <fieldset>
                        <legend>Login Information</legend>

                        <div class="form-group row">
                            <div class="col-md-4">
                                <label for="username">Username: </label>
                            </div>
                            <div class="col-md-8">
                                <input class="form-control" type="text" name="username" id="username" value="{$patient->username}" class="required" disabled="disabled" />
                            </div>
                        </div>
                        <div class="form-group row" id="password-holder" style="display: none;">
                            <div class="col-md-4">
                                <label for="password">Password: </label>
                            </div>
                            <div class="col-md-8">
                                <input class="form-control" type="text" name="password" id="password" value="" class="required" disabled="disabled" />
                            </div>
                        </div>
                        <div class="form-group row" id="confirm-password-holder" style="display: none;">
                            <div class="col-md-4">
                                <label for="confirm_password">Confirm Password: </label>
                            </div>
                            <div class="col-md-8">
                                <input class="form-control" type="text" name="confirm_password" id="confirm_password" value="" class="required" disabled="disabled" />
                            </div>
                        </div>
                    </fieldset>
                </div>
                {/if}
                <div class="col-md-6 patient-only">
                    <fieldset>
                        <legend>CTH Information</legend>

                        {** COACHES **}
                        <div class="form-group col-md-12">
                            {if !empty($userCoaches['coaches'])}
                            <div class="col-md-4">
                                <label>Coaches: </label>
                            </div>
                            <div class="col-md-8">
                                <div class="row">
                                {foreach $userCoaches['coaches'] as $coach}
                                    <div class="col-md-8">
                                        {$coach->first_name} {$coach->last_name}
                                    </div>
                                    {if \Lib\User\User::can('view_patient_phi', $userPermissions)}
                                    <div class=col-md-1 pull-right">
                                        <button class="btn btn-primary btn-sm delete_coach" data-coach_id="{$coach->coach_provider_id}" data-user_id="{$patient->user_id}" data-type="coach">Delete</button>
                                    </div>
                                    {/if}
                                {/foreach}
                                </div>
                            </div>
                            {/if}
                        </div>

                        <div class="form-group col-md-12" id="coaches-select" style="display: none;">
                            {if \Lib\User\User::can('view_patient_phi', $userPermissions)}
                            <div>
                                <div class="col-md-4">
                                    <label for="coach">Add Coach: </label>
                                </div>
                                <div class="col-md-8">

                                    {if !empty($coaches)}
                                        <select name="coach" id="coach" class="form-control">
                                            <option value=""> - Select - </option>
                                            {foreach $coaches as $coach}
                                                <option value="{$coach->user_id}">{$coach->last_name}, {$coach->first_name}</option>
                                            {/foreach}
                                        </select>
                                    {else}
                                        No more coaches available for this practice
                                    {/if}
                                </div>
                            </div>
                            {/if}
                        </div>

                        {** PROVIDERS **}
                        <div class="form-group col-md-12">
                            {if !empty($userCoaches['providers'])}
                                <div class="col-md-4">
                                    <label>Providers: </label>
                                </div>
                                <div class="col-md-8">
                                    <div class="row">
                                    {foreach $userCoaches['providers'] as $coach}
                                        <div class="col-md-8">
                                            {$coach->first_name} {$coach->last_name}
                                        </div>
                                        {if \Lib\User\User::can('view_patient_phi', $userPermissions)}
                                        <div class=col-md-1 pull-right">
                                            <button class="btn btn-primary btn-sm delete_provider" data-coach_id="{$coach->coach_provider_id}" data-user_id="{$patient->user_id}" data-type="provider">Delete</button>
                                        </div>
                                        {/if}
                                        </div>
                                    {/foreach}
                                </div>
                            {/if}
                        </div>

                        <div class="form-group col-md-12" id="practice-select" style="display: none;">
                            {if \Lib\User\User::can('view_patient_phi', $userPermissions)}
                            <div>
                                <div class="col-md-4">
                                    <label for="provider">Add Provider: </label>
                                </div>
                                <div class="col-md-8">
                                    {if !empty($providers)}
                                        <select name="provider" id="provider" class="form-control">
                                            <option value=""> - Select - </option>
                                        {foreach $providers as $provider}
                                            {assign var="hasProvider" value=false}
                                            {foreach $patient->coach_providers['providers'] as $userProvider}
                                                {if $provider->user_id == $userProvider->coach_provider_id}
                                                    {assign var="hasProvider" value=true}
                                                {/if}
                                            {/foreach}
                                            {if !$hasProvider}
                                                <option value="{$provider->user_id}">{$provider->last_name}, {$provider->first_name}</option>
                                            {/if}
                                        {/foreach}
                                    </select>
                                    {else}
                                        No providers available for this practice
                                    {/if}
                                </div>
                            </div>
                            {/if}
                        </div>

                        <div class="col-md-6">
                            <label for="type_2_dm">Type 2 DM: </label>
                            <input type="checkbox" name="type_2_dm" id="type_2_dm" value="1" {if $patient->type_2_dm} checked="checked"{/if} />
                        </div>
                        <div class="col-md-6">
                            <label for="type_2_dm">Test user: </label>
                            <input type="checkbox" name="test_user" id="type_2_dm" value="1" {if $patient->test_user} checked="checked"{/if} />
                        </div>
                    </fieldset>
                </div>
            </form>
        </div>
    </div>

    {* {if !empty($user->practice_id)} *}
        <div class="block">
            <div class="patients-bg-active header-bar">
                <div class="partial half left"><legend>Dashboard</legend></div>
            </div>

            <div class="col-md-6">
                <button id="schedule-survey" class="btn btn-primary col-md-12 center" data-toggle="modal" data-target="#surveyModal">Schedule New Survey</button>
            </div>
            {* <div class="col-md-3">
                <button id="start-new-survey" class="btn btn-primary">Start New Survey</button>
            </div>
            <div class="col-md-3">
                <button id="start-action-plan" class="btn btn-primary">Start New Action Plan</button>
            </div> *}
            <div class="col-md-6">
                <button id="create-followup" class="btn btn-primary col-md-12 center" data-toggle="modal" data-type="new" data-user_id="{$patient->user_id}" data-target="#followupActionModal">Create New Follow Up</button>
            </div>
        </div>
    {* {/if} *}
        <div class="block">
            <div class="patients-bg-active header-bar">
                <div class="partial half left"><legend>Activities</legend></div>
            </div>
            <div id="content" class="tab-content">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#follow-ups" name="tabs" data-toggle="tab" role="tab">Follow Ups</a></li>
                    <li><a href="#action-plans" name="tabs" data-toggle="tab" role="tab">Action Plans</a></li>
                    <li><a href="#health-surveys" name="tabs" data-toggle="tab" role="tab">Health Surveys</a></li>
                    <li><a href="#motivational-prompts" name="tabs" data-toggle="tab" role="tab">Motivational Prompts</a></li>
                </ul>


                <div id="follow-ups" class="panel tab-pane" role="tabpanel">
                    <div id="dashboard-tabs" class="ui-helper-clearfix">
                        <ul >
                            <li class="active"><a href="#overdue-followup-tab">Overdue Follow Ups</a></li>
                            <li><a href="#followups-tab">Follow Ups</a></li>
                        </ul>

                        {include file='admin/pages/partials/followup-tabs.tpl'}

                    </div>
                </div>

                <div id="action-plans" class="panel tab-pane" role="tabpanel">
                    <div class="table_container ap_container">
                        <h3>Action Plans</h3>
                        <div class="scroll">
                        {if !empty($action_plans)}
                            <table class="ap_table pure-table pure-table-bordered grid display hover">
                                <thead>
                                    <tr>
                                        <th>My Goal</th>
                                        <th>Date Created</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {foreach from=$action_plans item=value}
                                    <tr>
                                        <td>{$value.my_goal}</td>
                                        <td>{$value.created_at}</td>
                                        <td>{$value.status}</td>
                                        <td>
                                            <div class="btn-group" style="display: inline-block;">
                                                <button class="report-trigger btn btn-primary" data-toggle="dropdown">Action Plan</button>
                                                <ul class="dropdown dropdown-menu" style="display: none;">
                                                    <li>
                                                        <a class="pure-button view-report" href="#" data-href='/printActionPlan?action_plan_id={$value.batch_id}&mode=summary&user_id={$patient->user_id}'>View</a>
                                                    </li>
                                                    <li>
                                                        <a class="btnPrint pure-button" href='/printActionPlan?action_plan_id={$value.batch_id}&user_id={$patient->user_id}'>Print Results</a>
                                                    </li>
                                                    <li>
                                                        <a class="pure-button" href='/pdfexport?page_type=action_plan&item_id={$value.batch_id}&user_id={$patient->user_id}'>Save as PDF</a>
                                                    </li>
                                                </ul>
                                            </div>

                                            {if \Lib\User\User::can('view_patient_phi', $userPermissions)}
                                                {if $value.status eq 'incomplete'}
                                                     <button class="pure-button login-user btn btn-primary" data-user_id="{$patient->user_id}" data-redirect-url="/actionplan?action_plan_id={$value.batch_id}">Resume Plan</button>
                                                {else}
                                                    <button class="pure-button login-user btn btn-primary" data-user_id="{$patient->user_id}" data-redirect-url="/actionplan?action_plan_id={$value.batch_id}">Update Plan</button>
                                                {/if}
                                            {/if}
                                        </td>
                                    </tr>
                                    {/foreach}
                                </tbody>
                            </table>
                        {else}
                            No action plans.
                        {/if}
                        </div>
                    </div>
                </div>

                <div id="health-surveys" class="panel tab-pane" role="tabpanel">
                    <div class="table_container survey_container">
                        <h3>Health Surveys</h3>
                        <div class="scroll">
                        {if !empty($surveys)}
                            <table class="survey_table pure-table pure-table-bordered grid display hover">
                                <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {foreach from=$surveys item=value}
                                    <tr>
                                        <td>{$value.time_stamp}</td>
                                        <td>
                                            <div class="btn-group" style="display: inline-block">
                                                <button class="report-trigger btn btn-primary" data-toggle="dropdown">Patient Report</button>
                                                <ul class="dropdown dropdown-menu" style="display: none;">
                                                    <li>
                                                        <a class='pure-button view-report' href='#' data-href='/surveyresults?batch_id={$value.batch_id}&user_id={$patient->user_id}' class="pure-button">View</a>
                                                    </li>
                                                    <li>
                                                        <a id="survey_pdf_save" class="survey_action pure-button" href='/pdfexport?page_type=survey&item_id={$value.batch_id}&user_id={$patient->user_id}'>Save as PDF</a>
                                                    </li>
                                                    <li>
                                                        <a id="survey_qa_load" class="view-report pure-button"  href='#' data-href='/api/health-survey/q-and-a/{$value.batch_id}?auth_id={$auth_id}&auth_public={$auth_public}'>View Answers</a>
                                                    </li>
                                                    <li>
                                                        <a class="btnPrint pure-button" href='/printSurvey?survey_id={$value.batch_id}&user_id={$patient->user_id}'>Print</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="btn-group" style="display: inline-block">
                                                <button class="report-trigger btn btn-primary" data-toggle="dropdown">Clinician Report</button>
                                                <ul class="dropdown dropdown-menu" style="display: none;">
                                                    <li>
                                                        <a class='pure-button view-report' href='#' data-href='/surveyresults?batch_id={$value.batch_id}&user_id={$patient->user_id}&mode=clinician' class="pure-button">View</a>
                                                    </li>
                                                    <li>
                                                        <a id="survey_pdf_save" class="survey_action pure-button"  href='/pdfexport?page_type=survey&item_id={$value.batch_id}&user_id={$patient->user_id}&mode=clinician'>Save as PDF</a>
                                                    </li>
                                                    <li>
                                                        <a class="btnPrint pure-button" href='/printSurvey?survey_id={$value.batch_id}&user_id={$patient->user_id}&mode=clinician'>Print</a>
                                                    </li>
                                                    <li>
                                                        <a class='pure-button view-report' href='#' data-href='/surveyresults?batch_id={$value.batch_id}&user_id={$patient->user_id}&mode=clinician&basic=true' class="pure-button">Copy/Paste</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    {/foreach}
                                </tbody>
                            </table>
                        {else}
                            No health surveys completed.
                        {/if}
                        </div>
                    </div>
                </div>

                <div id="motivational-prompts" class="panel tab-pane" role="tabpanel">
                    <div class="table_container motivational_container">
                        <h3>Motivational Prompts</h3>
                        <div class="scroll">
                        {if !empty($motivation_prompts)}
                            <table class="motivation_table pure-table pure-table-bordered grid display hover">
                                <thead>
                                    <tr>
                                        <th>Start Date</th>
                                        <th>Method</th>
                                        <th>Frequency</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {foreach from=$motivation_prompts item=value}
                                    <tr>
                                        <td>{$value.start_date}</td>
                                        <td>{$value.receive_method}</td>
                                        <td>{$value.frequency}</td>
                                        <td>
                                            <button class="pure-button btn btn-primary motivational-prompt"  data-toggle="modal" data-target="#motivationalModal"data-prompt_id="{$value.prompt_id}" data-message="{$value.message}" data-event_time="{$value.event_time}" data-hourly_frequency="{$value.hourly_frequency}" data-recieve_method="{$value.recieve_method}">View Prompt</button>
                                        </td>

                                    </tr>
                                    {/foreach}
                                </tbody>
                            </table>
                        {else}
                            No motivational prompts.
                        {/if}
                        </div>
                    </div>
                </div>


            </div>
        </div>


        <div class="modal fade"  id="surveyModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">



                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel">Schedule New Survey For: {$patient->first_name} {$patient->last_name}</h4>
                    </div>
                    <div class="modal-body">
                        <form id="survey-form">
                            <input type='text' class='survey_elem survey_date' size='45' placeholder='When do you want to schedule the survey?'/>

                            <select class='survey_elem survey_hour' name='survey_hour'>
                                <option value=''>{translate language=$language key="action_plan_hour" text="Select hour"}</option>
                                {for $foo=1 to 12}
                                    <option value='{$foo}'>{$foo}</option>
                                {/for}
                            </select>
                            <select class='survey_elem survey_minute' name='survey_minute'>
                                <option value=''>{translate language=$language key="action_plan_minute" text="Select minute"}</option>
                                {for $foo=0 to 59 step 5}
                                    <option value='{$foo}'>{$foo}</option>
                                {/for}
                            </select>

                            <select class='survey_elem survey_meridian' name='survey_meridian'>
                                <option value=''>{translate language=$language key="am" text="a.m."}/{translate language=$language key="pm" text="p.m."}</option>
                                <option value='AM'>{translate language=$language key="am" text="a.m."}</option>
                                <option value='PM'>{translate language=$language key="pm" text="p.m."}</option>
                            </select>

                            <select class="survey_remind_method survey_elem" name="survey_remind"></label>
                                <option value="">{translate language=$language key="action_plan_choose" text="Choose …"}</option>
                                <option value="2">{translate language=$language key="action_plan_text" text="Text Message"}</option>
                                <option value="1">{translate language=$language key="action_plan_email" text="Email"}</option>
                                <option value="3">{translate language=$language key="action_plan_both" text="Email and Text Message"}</option>
                            </select>
                        </form>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal" id="cancel">Cancel</button>
                            <button type="button" class="btn btn-primary" id="schedule_survey_submit">Schedule</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        {include file="admin/pages/partials/followup-modal.tpl"}
        {include file="admin/pages/partials/followup-modal-basic.tpl"}

{*         <div class="modal fade"  id="followupNewModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel">Create Follow Up</h4>
                    </div>
                    <div class="modal-body">
                        <form id="new-followup-form">
                            <div class="form-group">
                                <label for="followup_date">When the follow up occur:</label>
                                <input type="text" name="followup_date" id="new-followup-date" placeholder="Pick a followup date" class="newFollowupDate required form-control"  />
                            </div>
                                <div class="row form-group">
                                    <div class="col-md-12"><label>Time:</label></div>
                                    <div class="col-md-2">
                                        Hour
                                        <select name="hour" class="newFollowupHour required form-control" id="new-followup-hour">
                                            {for $hour = 1 to 12}
                                            <option value="{$hour}">{$hour}</option>
                                            {/for}
                                        </select>
                                    </div>
                                    <div class="col-md-2">
                                        Minutes
                                        <select name="minute" class="newFollowupMinute required form-control" id="new-followup-minute">
                                            {for $minute = 0 to 55 step 5}
                                            <option value="{$minute}">{$minute}</option>
                                            {/for}
                                        </select>
                                    </div>
                                    <div class="col-md-2">
                                        Time of day
                                        <select name="meridian" class="newFollowupMeridian required form-control" id="new-followup-meridian">
                                            <option value="AM">AM</option>
                                            <option value="PM">PM</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6"></div>
                                </div>
                            <div class="form-group">
                                <label for="coach_providers">Who will do the follow up:</label>
                                        <select name="coach_providers" class="newFollowupCoach form-control">
                                    <option value="">Select a provider</option>
                                    {foreach $coach_providers as $coach}
                                        <option value="{$coach@key}">{$coach}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="regarding">Regarding</label>
                                <textarea name="regarding" class="newFollowupRegarding required form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="followup_method">Follow up method:</label>
                                <select name="followup_method" class="newFollowupFollowUpMethod required form-control">
                                    <option value="">Select a method</option>
                                    <option value="phone">By Phone</option>
                                    <option value="email">By email</option>
                                    <option value="office">In person</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="followup_reminder_method">Reminders</label>
                                <select name="followup_reminder_method" class="newFollowupReminderMethod required form-control">
                                    <option value="">{translate language=$language key="action_plan_choose" text="Choose …"}</option>
                                    <option value="2">{translate language=$language key="action_plan_text" text="Text Message"}</option>
                                    <option value="1">{translate language=$language key="action_plan_email" text="Email"}</option>
                                    <option value="3">{translate language=$language key="action_plan_both" text="Email and Text Message"}</option>
                                </select>
                            </div>

                        </form>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal" id="cancel">Cancel</button>
                            <button type="button" class="btn btn-primary" id="saveNewFollowup">Create</button>
                        </div>
                    </div>
                </div>
            </div>
        </div> *}

        {include file="admin/pages/partials/motivational-modal.tpl"}
{/block}

{block name="footer_scripts" append}

<script src="/assets/scripts/admin/users.js?v={$jsVersion}"></script>
<script src="/assets/scripts/admin/followups.js?v={$jsVersion}"></script>
<script src="/assets/scripts/admin/motivational-prompt.js?v={$jsVersion}"></script>
<script src="/assets/plugins/jquery.nutshell.js"></script>
<script src="/assets/scripts/footable.min.js"></script>
<script src="/assets/scripts/activities.js"></script>
<script src="/assets/scripts/printer.js"></script>

{/block}
