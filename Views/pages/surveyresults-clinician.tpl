{extends file='../site_base.tpl'}

{block name="head_extra"}
    <link rel="stylesheet" href="/assets/styles/results.css">
{/block}

{block name="content"}
    <meta name="survey_id" content="{$survey_id}"/>
    <h2> {translate language=$language key="clinician_header" text="Clinician Report"}</h2>

    <div id="legend">
        <p class="legend_header good">
            <i class="fa fa-lg fa-check-square color-green"></i>
             {translate language=$language key="clinician_survey_legend_header_good" text="Patient is doing well."}
        </p>
        <p class="legend_header warn">
            <i class="fa fa-lg fa-exclamation-triangle color-orange"></i>
             {translate language=$language key="clinician_survey_legend_header_warn" text="Patient could consider making changes in this area."}
        </p>
        <p class="legend_header danger">
            <i class="fa fa-lg fa-times-rectangle color-red"></i>
             {translate language=$language key="clinician_survey_legend_header_err" text="Patient could consider making changes in this area. Areas in red are where more change is needed or where they may need extra help."}
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
                                 {translate language=$language key="clinician_survey_timestamp_header" text="Survey on:"}
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
                                            <a href="#">{translate language=$language key="clinician_survey_show_more_link" text="Show more"}</a>
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
                                {translate language=$language key="clinician_survey_timestamp_header" text="Survey on:"}
                                <br>
                                {if isset($survey_data.yellow[0].first_run)}
                                    {$survey_data.yellow[0].first_run}
                                {else}
                                    {translate language=$language key="survey_not_exist" text="No Prior Results"}
                                {/if}
                            </th>
                            <th>
                                {translate language=$language key="clinician_survey_timestamp_header" text="Survey on:"}
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
                                            <a href="#">{translate language=$language key="clinician_survey_show_more_link" text="Show more"}</a>
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
                                {translate language=$language key="clinician_survey_timestamp_header" text="Survey on:"}
                                <br>
                                {if isset($survey_data.red[0].first_run)}
                                    {$survey_data.red[0].first_run}
                                {else}
                                    {translate language=$language key="survey_not_exist" text="No Prior Results"}
                                {/if}
                            </th>
                            <th>
                                {translate language=$language key="clinician_survey_timestamp_header" text="Survey on:"}<br>{$survey_data.red[0].second_run}
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
                                            <a href="#">{translate language=$language key="clinician_survey_show_more_link" text="Show more"}</a>
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
{/block}

{block name="foot_extra"}
<script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.js"></script>
<script src="/assets/scripts/results.js"></script>
<script src="/assets/scripts/form-pager.js"></script>
<script src="/assets/scripts/form-driver.js"></script>
<script src="/assets/scripts/printer.js"></script>
{/block}
