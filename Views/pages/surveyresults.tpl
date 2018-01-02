{extends file='../site_base.tpl'}

{block name="head_extra"}
<link rel="stylesheet" href="/assets/styles/results.css">
{/block}

{block name="content"}
  <meta name="survey_id" content="{$survey_id}"/>

    <h1> {translate language=$language key="survey_congrats" text="Congratulations!"}</h1>
    <h2 class="sh3"> {translate language=$language key="survey_header_completion" text="You have completed your Health Survey. Below you will see a summary of how you are doing based on this survey."}</h2>
    <div id="legend">
        <p class="legend_header good">
            <i class="fa fa-lg fa-check-square color-green"></i>
             {translate language=$language key="survey_legend_header_good" text="You are doing well, congratulations!"}
        </p>
        <p class="legend_header warn">
            <i class="fa fa-lg fa-exclamation-triangle color-orange"></i>
             {translate language=$language key="survey_legend_header_warn" text="You could consider making changes in this area."}
        </p>
        <p class="legend_header danger">
            <i class="fa fa-lg fa-times-rectangle color-red"></i>
             {translate language=$language key="survey_legend_header_err" text="You should Consider making changes in this area. Areas in red are where more change is needed, or where you may need extra help."}
        </p>
    </div>
    <div id="results">
        <div id="green_results" class="push">
            <div class="scroll">
                <table class="cth-table pure-table pure-table-bordered">
                    <thead>
                        <tr>
                            <th class="health_area">{translate language=$language key="survey_health_area_title" text="Health Area"}</th>
                            <th>
                                 {translate language=$language key="survey_timestamp_header" text="My Survey on:"}
                                <br>
                                {if isset($survey_data.green[0].first_run)}
                                    {$survey_data.green[0].first_run}
                                {else}
                                    {translate language=$language key="survey_not_exist" text="No Prior Results"}
                                {/if}
                            </th>
                            <th>
                                <br>
                                {$survey_data.green[0].second_run}
                            </th>
                            <th class="suggestions">{translate language=$language key="survey_table_suggestions" text="Suggestions"}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$survey_data.green item=surveys}
                            <tr>
                                <td>
                                    <span class="color-green">{translate language=$language key="{$surveys.health_area_tx_key}" text="{$surveys.friendly_name}" substitutions=""}</span>
                                </td>
                                <td>
                                    {if $surveys.first_result == 'green'}
                                        <i class="fa fa-lg fa-check-square color-green"></i>
                                    {elseif $surveys.first_result == 'yellow'}
                                        <i class="fa fa-lg fa-exclamation-triangle color-orange"></i>
                                    {elseif $surveys.first_result == 'red'}
                                        <i class="fa fa-lg fa-times-rectangle color-red"></i>
                                    {else}
                                    {/if}
                                </td>
                                <td>
                                    {if $surveys.second_result == 'green'}
                                        <i class="fa fa-lg fa-check-square color-green"></i>
                                    {else}
                                        {translate language=$language key="survey_show_no_result" text="No result"}
                                    {/if}
                                </td>
                                <td>
                                    <div class="short_text p_display">
                                        {translate language=$language key="{$surveys.text_body_tx_key}_short_tx" text="{$surveys.short_text}" substitutions=$surveys.user_input}
                                        {if $surveys.text|count_characters > 0}
                                             </br>
                                            <a href="#">{translate language=$language key="survey_show_more_link" text="Show me more"}</a>
                                            </br>
                                        {/if}
                                    </div>
                                    <div class="long_text p_display">
                                        {translate language=$language key="{$surveys.text_body_tx_key}" text="{$surveys.text}" substitutions=$surveys.user_input}
                                    </div>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
        <div id="yellow_results" class="push">
            <div class="scroll">
                <table class="cth-table pure-table pure-table-bordered">
                    <thead>
                        <tr>
                            <th class="health_area">{translate language=$language key="survey_health_area_title" text="Health Area"}</th>
                            <th>
                                {translate language=$language key="survey_timestamp_header" text="My Survey on:"}
                                <br>
                                {if isset($survey_data.yellow[0].first_run)}
                                    {$survey_data.yellow[0].first_run}
                                {else}
                                    {translate language=$language key="survey_not_exist" text="No Prior Results"}
                                {/if}
                            </th>
                            <th>
                                {translate language=$language key="survey_timestamp_header" text="My Survey on:"}
                                <br>
                                {$survey_data.yellow[0].second_run}
                            </th>
                            <th class="suggestions">{translate language=$language key="survey_table_suggestions" text="Suggestions"}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$survey_data.yellow item=surveys}
                            <tr>
                                <td>
                                    <span class="color-orange">{translate language=$language key="{$surveys.health_area_tx_key}" text="{$surveys.friendly_name}" substitutions=""}</span>
                                </td>
                                <td>
                                    {if $surveys.first_result == 'green'}
                                        <i class="fa fa-lg fa-check-square color-green"></i>
                                    {elseif $surveys.first_result == 'yellow'}
                                        <i class="fa fa-lg fa-exclamation-triangle color-orange"></i>
                                    {elseif $surveys.first_result == 'red'}
                                        <i class="fa fa-lg fa-times-rectangle color-red"></i>
                                    {/if}
                                </td>
                                <td>
                                    {if $surveys.second_result == 'yellow'}
                                        <i class="fa fa-lg fa-exclamation-triangle color-orange"></i>
                                    {else}
                                        {translate language=$language key="survey_show_no_result" text="No result"}
                                    {/if}
                                </td>
                                <td>
                                    <div class="short_text p_display">
                                        {translate language=$language key="{$surveys.text_body_tx_key}_short_tx" text="{$surveys.short_text}" substitutions=$surveys.user_input}
                                        {if $surveys.text|count_characters > 0}
                                             </br>
                                            <a href="#">{translate language=$language key="survey_show_more_link" text="Show me more"}</a>
                                            </br>
                                        {/if}
                                    </div>
                                    <div class="long_text p_display">
                                        {translate language=$language key="{$surveys.text_body_tx_key}" text="{$surveys.text}" substitutions=$surveys.user_input}
                                    </div>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
        <div id="red_results" class="push">
            <div class="scroll">
                <table class="cth-table pure-table pure-table-bordered">
                    <thead>
                        <tr>
                            <th class="health_area">{translate language=$language key="survey_health_area_title" text="Health Area"}</th>
                            <th>
                                {translate language=$language key="survey_timestamp_header" text="My Survey on:"}
                                <br>
                                {if isset($survey_data.red[0].first_run)}
                                    {$survey_data.red[0].first_run}
                                {else}
                                    {translate language=$language key="survey_not_exist" text="No Prior Results"}
                                {/if}
                            </th>
                            <th>
                                {translate language=$language key="survey_timestamp_header" text="My Survey on:"}<br>{$survey_data.red[0].second_run}
                            </th>
                            <th class="suggestions">{translate language=$language key="survey_table_suggestions" text="Suggestions"}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$survey_data.red item=surveys}
                            <tr>
                                <td>
                                    <span class="color-red">{translate language=$language key="{$surveys.health_area_tx_key}" text="{$surveys.friendly_name}" substitutions=""}</span>
                                </td>
                                <td>
                                    {if $surveys.first_result == 'green'}
                                        <i class="fa fa-lg fa-check-square color-green"></i>
                                    {elseif $surveys.first_result == 'yellow'}
                                        <i class="fa fa-lg fa-exclamation-triangle color-orange"></i>
                                    {elseif $surveys.first_result == 'red'}
                                        <i class="fa fa-lg fa-times-rectangle color-red"></i>
                                    {/if}
                                </td>
                                <td>
                                    {if $surveys.second_result == 'red'}
                                        <i class="fa fa-lg fa-times-rectangle color-red"></i>
                                    {else}
                                        {translate language=$language key="survey_show_no_result" text="No result"}
                                    {/if}
                                </td>
                                <td>
                                    <div class="short_text p_display">
                                        {translate language=$language key="{$surveys.text_body_tx_key}_short_tx" text="{$surveys.short_text}" substitutions=$surveys.user_input}
                                        {if $surveys.text|count_characters > 0}
                                            </br>
                                            <a href="#">{translate language=$language key="survey_show_more_link" text="Show me more"}</a>
                                            </br>
                                         {/if}
                                    </div>
                                    <div class="long_text p_display">
                                        {translate language=$language key="{$surveys.text_body_tx_key}" text="{$surveys.text}" substitutions=$surveys.user_input}
                                    </div>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
        <div id="next_steps" class="push">
            <h3>{translate language=$language key="surveys_next_steps" text="Next Steps"}</h3>
            <div>
                <p><span>{translate language=$language key="surveys_health_provider_discussion_qs" text="What areas would like to talk about with your healthcare provider?"}</span></p>
                <p><span>{translate language=$language key="surveys_health_provider_select_areas" text="Pick one or two areas by putting a check mark in one or two squares:"}</span></p>
                <div id="next_step_form_container" class="nicer push hug">
                    <div class="pure-g">
                        <div class="next_step_col1 pure-u-1 pure-u-md-1-2">
                            {foreach from=$survey_data_col1 key=key item=survey}
                                <div class="push hug">
                                    <input type="checkbox" class="next_step_opt" id="evaluation_{$survey.evaluation_id}">
                                    <label class="color-{$survey.second_result}" for="evaluation_{$survey.evaluation_id}">{translate language=$language key="{$survey.health_area_tx_key}" text="{$survey.friendly_name}"}</label>
                                </div>
                            {/foreach}
                        </div>
                        <div class="next_step_col2 pure-u-1 pure-u-md-1-2">
                            {foreach from=$survey_data_col2 key=key item=survey}
                                <div class="push hug">
                                    <input type="checkbox" class="next_step_opt" id="evaluation_{$survey.evaluation_id}">
                                    <label class="color-{$survey.second_result}" for="evaluation_{$survey.evaluation_id}">{translate language=$language key="{$survey.health_area_tx_key}" text="{$survey.friendly_name}"}</label>
                                </div>
                            {/foreach}
                            {*
                            <div class="push hug">
                                <div id="other_opt_container">
                                    <input type="checkbox" class="next_step_opt" id="other_opt">
                                    <label for="other_opt">{translate language=$language key="survey_other_health_reason" text="Other"}</label>
                                    <div id="other_input">
                                        <label class="sizer">
                                            <input type="text" class="inputer next_step_freeform">
                                        </label>
                                    </div>
                                </div>
                            </div>
                            *}
                        </div>
                    </div>
                </div>
                <div id="next_step_option_container">
                    <!-- <a class="pure-button pure-button-primary" href='/pdfexport?page_type=survey&item_id={$survey_id}'>Save as PDF</a> -->
                    <a class="pure-button btnPrint button-blue next_step_control print" href='/printSurvey?survey_id={$survey_id}'>{translate language=$language key="print" text="Print"}</a>
                    <button class="pure-button button-blue next_step_control pure-button-disabled ap_start">{translate language=$language key="survey_start_ap" text="Start an Action Plan"}</button>
                    <button class="pure-button button-blue next_step_control pure-button-disabled save_health_areas">{translate language=$language key="survey_save_areas" text="Save Health Areas"}</button>
                </div>
            </div>
        </div>
    </div>
{/block}

{block name="modals"}
    <div class="modal" data-remodal-id="survey-more-info">
        <header>
            <h3>{translate language=$language key="survey_more_info" text="More Information"}</h3>
            <button class="close" data-remodal-action="close"><i class="fa fa-times" aria-hidden="true"></i></button>
        </header>
        <section>
            <div id='tap_text_full'>
            </div>
        </section>
    </div>
    <div class="modal" data-remodal-id="no_survey">
        <header>
            <h3>{translate language=$language key="survey_complete_survey" text="Complete A survey!"}</h3>
            <button class="close" data-remodal-action="close"><i class="fa fa-times" aria-hidden="true"></i></button>
        </header>
        <section>
            <div id='no_survey'>
               {translate language=$language key="survey_not_survey" text="You haven't completed a health survey yet.."}
               <a href='healthsurvey'>{translate language=$language key="survey_go_back" text="Go Back"}</a>
            </div>
        </section>
    </div>
{/block}

{block name="foot_extra"}
<script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.js"></script>
<script src="/assets/scripts/results.js"></script>
<script src="/assets/scripts/form-pager.js"></script>
<script src="/assets/scripts/form-driver.js"></script>
<script src="/assets/scripts/printer.js"></script>
{/block}
