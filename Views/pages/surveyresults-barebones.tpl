<!doctype html>
<html lang="en" dir="ltr">
<head>

    <meta charset="utf-8">

    <title>{translate language=$language key="health_survey_results" text="Health Survey Results"}</title>

    <link rel="stylesheet" href="/assets/styles/results-print.css">

</head>
<body>

    <img class="logo" src="/assets/images/logo.svg" width="130">

    <h1>{translate language=$language key="health_survey_results" text="Health Survey Results"}</h1>

    <h2>{$user->username}</h2>

    <div class="clear"></div>

    <p>{translate language=$language key="survey_header_completion_printer" text="Congratulations on finishing your health survey! Based on your survey answers, below is a summary of how you are doing with your health. If you filled out a survey before then your most recent survey results are shown as well. Each area has a symbol to show where you are doing well and where you could consider making some changes."}</p>

    <div id="legend">

        <h3>What the symbols mean</h3>

        <div>

            <p class="good">
                <img src="/assets/images/good.svg" width="25">
                <span>{translate language=$language key="survey_legend_header_good" text="You are doing well, congratulations!"}</span>
            </p>

            <p class="warn">
                <img src="/assets/images/warn.svg" width="25">
                <span>{translate language=$language key="survey_legend_header_warn" text="You could consider making changes in this area."}</span>
            </p>

            <p class="danger">
                <img src="/assets/images/danger.svg" width="25">
                <span>{translate language=$language key="survey_legend_header_err" text="You should Consider making changes in this area. Areas in red are where more change is needed, or where you may need extra help."}</span>
            </p>

        </div>

    </div>

    <h3>Your Health Survey Results</h3>

    <table>
        <colgroup>
            <col span="1" style="width: 40%;">
            <col span="1" style="width: 30%;">
            <col span="1" style="width: 30%;">
        </colgroup>
        <thead>
            <tr>
                <th>{translate language=$language key="survey_health_area_title" text="Health Area"}</th>
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
                    {translate language=$language key="survey_timestamp_header_2" text="My Most Recent Survey on:"}
                    {$survey_data.green[0].second_run}
                </th>
                {*
                <th>{translate language=$language key="survey_table_suggestions" text="Suggestions"}</th>
                *}
            </tr>
        </thead>
        <tbody>

            {foreach from=$survey_data.green item=surveys}
                <tr>
                    <td>
                        {translate language=$language key="{$surveys.health_area_tx_key}" text="{$surveys.friendly_name}" substitutions=""}
                    </td>
                    <td>
                        {if $surveys.first_result == 'green'}
                            <img src="/assets/images/good.svg" width="18">
                        {elseif $surveys.first_result == 'yellow'}
                            <img src="/assets/images/warn.svg" width="18">
                        {elseif $surveys.first_result == 'red'}
                            <img src="/assets/images/danger.svg" width="18">
                        {else}
                        {/if}
                    </td>
                    <td>
                        {if $surveys.second_result == 'green'}
                            <img src="/assets/images/good.svg" width="18">
                        {else}
                            {translate language=$language key="survey_show_no_result" text="No result"}
                        {/if}
                    </td>
                    {*
                    <td>
                        {translate language=$language key="{$surveys.text_body_tx_key}_short_tx" text="{$surveys.short_text}" substitutions=$surveys.user_input}
                        {if $surveys.text|count_characters > 0}
                            {translate language=$language key="{$surveys.text_body_tx_key}" text="{$surveys.text}" substitutions=$surveys.user_input}
                        {/if}
                    </td>
                    *}
                </tr>
            {/foreach}

            {foreach from=$survey_data.yellow item=surveys}
                <tr>
                    <td>
                        {translate language=$language key="{$surveys.health_area_tx_key}" text="{$surveys.friendly_name}" substitutions=""}
                    </td>
                    <td>
                        {if $surveys.first_result == 'green'}
                            <img src="/assets/images/good.svg" width="18">
                        {elseif $surveys.first_result == 'yellow'}
                            <img src="/assets/images/warn.svg" width="18">
                        {elseif $surveys.first_result == 'red'}
                            <img src="/assets/images/danger.svg" width="18">
                        {/if}
                    </td>
                    <td>
                        {if $surveys.second_result == 'yellow'}
                            <img src="/assets/images/warn.svg" width="18">
                        {else}
                            {translate language=$language key="survey_show_no_result" text="No result"}
                        {/if}
                    </td>
                    {*
                    <td>
                        {translate language=$language key="{$surveys.text_body_tx_key}_short_tx" text="{$surveys.short_text}" substitutions=$surveys.user_input}
                        {if $surveys.text|count_characters > 0}
                            {translate language=$language key="{$surveys.text_body_tx_key}" text="{$surveys.text}" substitutions=$surveys.user_input}
                        {/if}
                    </td>
                    *}
                </tr>
            {/foreach}

            {foreach from=$survey_data.red item=surveys}
                <tr>
                    <td>
                        {translate language=$language key="{$surveys.health_area_tx_key}" text="{$surveys.friendly_name}" substitutions=""}
                    </td>
                    <td>
                        {if $surveys.first_result == 'green'}
                            <img src="/assets/images/good.svg" width="18">
                        {elseif $surveys.first_result == 'yellow'}
                            <img src="/assets/images/warn.svg" width="18">
                        {elseif $surveys.first_result == 'red'}
                            <img src="/assets/images/danger.svg" width="18">
                        {/if}
                    </td>
                    <td>
                        {if $surveys.second_result == 'red'}
                            <img src="/assets/images/danger.svg" width="18">
                        {else}
                            {translate language=$language key="survey_show_no_result" text="No result"}
                        {/if}
                    </td>
                    {*
                    <td>
                        {translate language=$language key="{$surveys.text_body_tx_key}_short_tx" text="{$surveys.short_text}" substitutions=$surveys.user_input}
                        {if $surveys.text|count_characters > 0}
                            {translate language=$language key="{$surveys.text_body_tx_key}" text="{$temp}" substitutions=$surveys.user_input}
                        {/if}
                    </td>
                    *}
                </tr>
            {/foreach}

        </tbody>
    </table>

    <p><b>{translate language=$language key="survey_next_page_work_on" text="See the next page for suggestions for things you can work on."}</b></p>

    <div class="break"></div>

    <h1>Suggestions For Things You Can Work On</h1>

    <p>Based on your most recent health survey, these are the areas where you could consider making changes, and why they are important.</p>

    <p>You can use this summary to help you choose a health goal. You and your healthcare provider can then fill out an Action Plan on the CTH website to plan out your next steps to help you reach your goal.</p>

    <h2 class="area"><img src="/assets/images/warn.svg" width="25"> Yellow Areas</h2>
    <h3>{translate language=$language key="survey_legend_header_warn" text="You could consider making changes in this area."}</h3>

    {foreach from=$survey_data.yellow item=surveys}
        <h4>{translate language=$language key="{$surveys.health_area_tx_key}" text="{$surveys.friendly_name}" substitutions=""}</h4>
        <div class="compact">
            {translate language=$language key="{$surveys.text_body_tx_key}_short_tx" text="{$surveys.short_text}" substitutions=$surveys.user_input}
            {if $surveys.text|count_characters > 0}
                {translate language=$language key="{$surveys.text_body_tx_key}" text="{$surveys.text}" substitutions=$surveys.user_input}
            {/if}
        </div>
    {/foreach}

    <h2 class="area"><img src="/assets/images/danger.svg" width="25"> Red Areas</h2>
    <h3>{translate language=$language key="survey_legend_header_err" text="You should Consider making changes in this area. Areas in red are where more change is needed, or where you may need extra help."}</h3>

    {foreach from=$survey_data.red item=surveys}
        <h4>{translate language=$language key="{$surveys.health_area_tx_key}" text="{$surveys.friendly_name}" substitutions=""}</h4>
        <div class="compact">
            {if $surveys.text|count_characters > 0}
                {translate language=$language key="{$surveys.text_body_tx_key}" text="{$surveys.text}" substitutions=$surveys.user_input}
            {/if}
        </div>
    {/foreach}

    {if $focus_areas}

        <div id="next">

            <h3>{translate language=$language key="surveys_next_steps" text="Next Steps"}</h3>

            <div>

                <p>{translate language=$language key="surveys_health_provider_health_areas_chosen" text="You picked the following area(s) to talk about with your healthcare provider:"}</p>

                <ul>
                    {foreach from=$focus_areas item=item}
                        <li>{$item}</li>
                    {/foreach}
                </ul>

                {*
                <ul>
                    {foreach from=$survey_data.green|@array_merge:$survey_data.yellow:$survey_data.red item=item}
                        <li class="color-{$item.second_result}">
                            {translate language=$language key="{$item.health_area_tx_key}" text="{$item.friendly_name}"}
                        </li>
                    {/foreach}
                </ul>
                *}

            </div>

        </div>

    {/if}

</body>
</html>
