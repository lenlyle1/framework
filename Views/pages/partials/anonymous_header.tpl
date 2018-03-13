<ul>
    <li class="selected">
        <a href="/">{translate language=$language key="login" text="Login"}</a>
        <ul>
            <li><a href="/forgot-password">{translate language=$language key="login_help" text="Login Help"}</a></li>
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
