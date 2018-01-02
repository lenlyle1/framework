<ul>
    <li class="selected">
    {if !empty($loggedIn)}
        <a href="/dashboard">Dashboard</a>
    {else}
        <a href="/home">Login</a>
    {/if}
        <ul>
            <li><a href="/healthsurvey">{translate language=$language key="health_survey" text="Health Survey"}</a></li>
            <li><a href="/actionplan">{translate language=$language key="action_plan" text="Action Plan"}</a></li>
            <li><a href="/activities">{translate language=$language key="activities" text="Activities"}</a></li>
        </ul>
    </li>
    <li><a href="/health-tips">{translate language=$language key="health_tips" text="Health Tips"}</a></li>
    <li><a href="/about">{translate language=$language key="about" text="About"}</a></li>
    <li>
        {if $language == "en"}
            <a class='lang_url spanish' href="/change-language/es">{translate language=$language key="spanish" text="Español"}</a>
        {else}
            <a class='lang_url english' href="/change-language/en">{translate language=$language key="english" text="English"}</a>
        {/if}
    </li>
</ul>
