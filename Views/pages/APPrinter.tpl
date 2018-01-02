<!doctype html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Action Plan</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/normalize/5.0.0/normalize.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/g/pure@0.6.2(buttons-min.css+forms-min.css+grids-min.css+grids-responsive-min.css+menus-min.css+tables-min.css)">
<link rel="stylesheet" href="/assets/styles/actionplan-print.css">
<link rel="stylesheet" href="/assets/styles/calendar.css">
</head>
<body>

{assign var="track" value=""}
<div id='print_content'>
    <div class="action-plan-box">
        <h3>{translate language=$language key="printer_action_plan" text="My Action Plan"}</h3>
        <div>
            <ul>
                <li><b>{translate language=$language key="printer_goal" text="My Goal:"}</b> {$ap_data.goal_text}</li>
                <li><b>{translate language=$language key="printer_action" text="My Action:"}</b> {$ap_data.brain_storm}</li>
                <li><b>{translate language=$language key="printer_plan" text="My Plan:"}</b> {$ap_data.plan_text}</li>
                <li><b>{translate language=$language key="printer_barrier" text="My Barrier:"}</b> {$ap_data.barrier_text}</li>
                <li><b>{translate language=$language key="printer_strategy" text="My Strategy:"}</b> {$ap_data.strategy_text}</li>
                <li>
                    <b>{translate language=$language key="printer_tracking" text="My Tracking Method(s):"}</b>

                    {translate language=$language key="paper" text=" Paper" tplVar="paper"}
                    {translate language=$language key="calendar" text=" Calendar" tplVar="calendar_option"}
                    {translate language=$language key="app" text=" App" tplVar="app"}
                    {translate language=$language key="other" text=" Other:" tplVar="other"}
                    {if $ap_data.track_paper}
                        {$track|cat: {$paper} }
                    {/if}
                    {if $ap_data.track_calendar}
                        {$track|cat: {$calendar_option} }
                    {/if}
                    {if $ap_data.track_app}
                        {$track|cat: {$app} }
                    {/if}
                    {if $ap_data.track_else != ''}
                        {$track|cat: {$other} }
                        {$track|cat: $ap_data.track_else}
                    {/if}
                    {$track}
                </li>
                <li><b>{translate language=$language key="printer_confidence" text="My Confidence:"}</b> {$ap_data.confidence_level} {translate language=$language key="printer_out_of" text="out of"} 10</li>
            </ul>
        </div>
    </div>

    <h1>{translate language=$language key="printer_monitor" text="Use the CTH Tracking Sheet to monitor your progress!"}</h1>

    <p><b>{translate language=$language key="printer_start" text="Start date:"}</b> {$ap_data.start_date}</p>

    <ol>
        <li>{translate language=$language key="printer_check" text="Each day you do an activity towards your goal, check it off the calendar."}</li>
        <li>{translate language=$language key="printer_note" text="You can also write a note of what you did on that date."}</li>
    </ol>

    <table class="calendar pure-table pure-table-bordered">
          <thead>
              <tr>
                  <th>{translate language=$language key="sunday" text="Sunday"}</th>
                  <th>{translate language=$language key="monday" text="Monday"}</th>
                  <th>{translate language=$language key="tuesday" text="Tuesday"}</th>
                  <th>{translate language=$language key="wednesday" text="Wednesday"}</th>
                  <th>{translate language=$language key="thursday" text="Thursday"}</th>
                  <th>{translate language=$language key="friday" text="Friday"}</th>
                  <th>{translate language=$language key="saturday" text="Saturday"}</th>
              </tr>
          </thead>
          <tbody>
              {$calendar}
          </tbody>
      </table>
</div>
{if  $nav_include == 1}
    <a class="btnPrint pure-button pure-button-primary" href='/printActionPlan?action_plan_id={$ap_id}'>{translate language=$language key="print" text="Print"}</a>
    <!-- <a class='ap_summary save pure-button pure-button-primary' href='/pdfexport?page_type=action_plan&item_id={$ap_id}'>{translate language=$language key="save" text="Save"}</a> -->
    <a class='ap_summary dash pure-button pure-button-primary' href='/dashboard'>{translate language=$language key="dashboard" text="Dashboard"}</a>
{/if}

{block name="foot_extra"}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="/assets/scripts/printer.js"></script>
    <script src="/assets/scripts/print_ap.js"></script>
{/block}
