{extends file='../site_base.tpl'}

{block name="content"}

<div class="board">
    <div class="board-row pure-g">
        <a id="healthsurvey" class="board-col pure-u-1 pure-u-md-1-2" href="/healthsurvey">
            <div class="board-wrap">
                <h3>
                    <span>{translate language=$language key="dashboard_start_new" text="Start a new"}</span>
                    <br>
                    {translate language=$language key="health_survey" text="Health Survey"}
                </h3>
                <p>{translate language=$language key="dashboard_health_survey" text="Get started with questions about your health"}</p>
            </div>
        </a>
        <a id="actionplan" class="board-col pure-u-1 pure-u-md-1-2" href="/actionplan">
            <div class="board-wrap">
                <h3>
                    <span>{translate language=$language key="dashboard_start_new" text="Start a new"}</span>
                    <br>
                    {translate language=$language key="action_plan" text="Action Plan"}
                </h3>
                <p>{translate language=$language key="dashboard_making_change" text="Making a change to improve your health is easier with a plan"}</p>
            </div>
        </a>
        <a id="activities" class="board-col pure-u-1 pure-u-md-1-2" href="/activities">
            <div class="board-wrap">
                <h3>{translate language=$language key="dashboard_activities" text="My Activities"}</h3>
                <p>{translate language=$language key="dashboard_see_past" text="See your past health surveys and action plans"}</p>
            </div>
        </a>
        <a id="health-tips" class="board-col pure-u-1 pure-u-md-1-2" href="/health-tips">
            <div class="board-wrap">
                <h3>{translate language=$language key="dashboard_health_tips" text="Health Tips"}</h3>
                <p>{translate language=$language key="dashboard_find_tips" text="Find tips and resources to help you"}</p>
            </div>
        </a>
    </div>
</div>

{/block}
