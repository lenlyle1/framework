<!doctype html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <title>{translate language=$language key="survey_header" text="Survey Results"}</title>
        <meta name="survey_id" content="{$survey_id}"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/fontawesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="/assets/styles/print.css">
    <link rel="stylesheet" href="/assets/styles/color.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/g/pure@0.6.2(tables-min.css)">
</head>
<body>
    <h1>{translate language=$language key="survey_congrats" text="Congratulations!"}</h1>
    <h2 class="sh3">{translate language=$language key="survey_header_completion" text="You have completed your Health Survey. Below you will see a summary of how you are doing based on this survey."}</h2>
    <div id="results">
        <div id="green_results" class="push green_result">
            <div class="scroll">
                <table class="cth-table pure-table pure-table-bordered" border="1" style="color:green;">
                    <thead>
                        <tr>
                            <th class="health_area"><span>{translate language=$language key="survey_health_area_title" text="Health Area"}</span></th>
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
                                        <span class="fa fa-lg fa-check-square color-green"> Good</span>
                                    {elseif $surveys.first_result == 'yellow'}
                                        <span class="fa fa-lg fa-exclamation-triangle color-orange"> Warning</span>
                                    {elseif $surveys.first_result == 'red'}
                                        <span class="fa fa-lg fa-times-rectangle color-red"> Attention Needed</span>
                                    {else}
                                        N/A
                                    {/if}
                                </td>
                                <td>
                                    {if $surveys.second_result == 'green'}
                                        <span class="fa fa-lg fa-check-square color-green"> Good</span>
                                    {else}
                                        No result
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
        <div id="yellow_results" class="push color-orange" style="color:orange;">
            <div class="scroll">
                <table class="cth-table pure-table pure-table-bordered" border="1">
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
                                        <span class="fa fa-lg fa-check-square color-green"> Good</span>
                                    {elseif $surveys.first_result == 'yellow'}
                                        <span class="fa fa-lg fa-exclamation-triangle color-orange"> Warning</span>
                                    {elseif $surveys.first_result == 'red'}
                                        <span class="fa fa-lg fa-times-rectangle color-red"> Attention Needed</span>
                                    {/if}
                                </td>
                                <td>
                                    {if $surveys.second_result == 'yellow'}
                                        <span class="fa fa-lg fa-exclamation-triangle color-orange"> Warning</span>
                                    {else}
                                        No result
                                    {/if}
                                </td>
                                <td>
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
        <div id="red_results" nobr="true" class="push color-red">
            <div class="scroll">
                <table class="cth-table pure-table pure-table-bordered" border="1">
                    <thead>
                        <tr>
                            <th class="health_area color-red">{translate language=$language key="survey_health_area_title" text="Health Area"}</th>
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
                                        <span class="fa fa-lg fa-check-square color-green"> Good</span>
                                    {elseif $surveys.first_result == 'yellow'}
                                        <span class="fa fa-lg fa-exclamation-triangle color-orange"> Warning</span>
                                    {elseif $surveys.first_result == 'red'}
                                        <span class="fa fa-lg fa-times-rectangle color-red"> Attention Needed</span>
                                    {/if}
                                </td>
                                <td>
                                    {if $surveys.second_result == 'red'}
                                        <span class="fa fa-lg fa-times-rectangle color-red"> Attention Needed</span>
                                    {else}
                                        No result
                                    {/if}
                                </td>
                                <td>
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
    </div>
</body>
</html>
