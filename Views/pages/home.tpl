{extends file='../site_base.tpl'}

{block name="body_attrs"}
class="bgphotos"
{/block}

{block name="navigation"}
    {* Doing this until we can get log-in/out working: *}
    {include file="pages/partials/anonymous_header.tpl"}
{/block}

{block name="main"}

<div data-slides-preload>
	<img src="/assets/images/photos/slideshow/01.jpg">
	<img src="/assets/images/photos/slideshow/02.jpg">
	<img src="/assets/images/photos/slideshow/03.jpg">
	<img src="/assets/images/photos/slideshow/04.jpg">
	<img src="/assets/images/photos/slideshow/05.jpg">
	<img src="/assets/images/photos/slideshow/06.jpg">
	<img src="/assets/images/photos/slideshow/07.jpg">
	<img src="/assets/images/photos/slideshow/08.jpg">
</div>

<div data-slides='[
    "/assets/images/photos/slideshow/01.jpg",
    "/assets/images/photos/slideshow/02.jpg",
    "/assets/images/photos/slideshow/03.jpg",
    "/assets/images/photos/slideshow/04.jpg",
    "/assets/images/photos/slideshow/05.jpg",
    "/assets/images/photos/slideshow/06.jpg",
    "/assets/images/photos/slideshow/07.jpg",
    "/assets/images/photos/slideshow/08.jpg"
]'></div>

<div class="mega kill">
    <div class="mega-wrapper pure-g">
        <div class="mega-primary pure-u-1 pure-u-md-5-8">
            <p class="tip">{translate language=$language key="home_welcome" text="Welcome to"}</p>
            <h3 class="oomph">{translate language=$language key="home_cth" text="Connection to Health"}</h3>
            <p class="convey">
                {translate language=$language key="home_helping" text="Helping patients and practice staff work <br> together to make plans for better health"}
            </p>
        </div>


        <div class="mega-secondary pure-u-1 pure-u-md-3-8">
            <img src="/assets/images/logo.svg">

            <form  action="/auth/signin" method="post" id="login-form">
                <!-- <label for="username">Username or MRN</label> -->
                <input type="text" id="username" class="inputer" name="username" placeholder='{translate language=$language key="home_placeholder_username" text="Username or MRN"}' autocapitalize="none" required>
                <!-- <label for="password">Password</label> -->
                <input type="password" id="password" class="inputer" name="password" placeholder='{translate language=$language key="home_placeholder_password" text="Password"}' required>
                <a class="pure-button button-blue button-massive" href="#" onclick="$('#login-form').submit();" >{translate language=$language key="log_in" text="Log In"}</a>
                <ul class="splitsky">
                    <li><a href="/forgot-password-form">{translate language=$language key="home_forgot_password" text="Forgot password?"}</a></li>
                    <li><a href="/login-help">{translate language=$language key="login_help" text="Login help"}</a></li>
                </ul>
            </form>

            {* <form class="kill" onsubmit="return false">
                <!-- <label for="username">Username or MRN</label> -->
                <input type="text" id="username" class="inputer" name="username" placeholder="Username or MRN" required>
                <!-- <label for="password">Password</label> -->
                <input type="password" id="password" class="inputer" name="password" placeholder="Password" required>
                <a class="pure-button button-blue button-massive" href="/dashboard">Log In</a>
                <ul class="splitsky">
                    <li><a href="/forgot-password">Forgot password?</a></li>
                    <li><a href="/login-help">Login help</a></li>
                </ul>
            </form> *}
        </div>
    </div>
</div>

    {if is_array($flash)}
        <div class="flash-text">{foreach $flash as $message}{$message}<br />{/foreach}</div>
    {/if}

{/block}

{block name="footer"}
{* This removes the footer! *}
{/block}

{block name="foot_extra"}

<script src="/assets/scripts/slideshow.js"></script>

{/block}
