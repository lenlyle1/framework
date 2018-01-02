{extends file='../site_base.tpl'}

{block name="content"}

<main role="main">
    <div class="wrap">
        <div class="container">
            <div class="login-box">
                <div class="login-header">
                    <p>{translate language=$language key="login_user" text="User Login"}</p>
                </div>
                <div class="login-fields">
                    {if $errors}
                    <div class="form-error">{$errors}</div>
                    {/if}
                    <form id="login-form" style="padding:20px" method="post" action="/auth/signin">
                        <input id="username" name="username" type="text" placeholder='{translate language=$language key="login_username" text="Username"}' required>
                        <input id="password" name="password" type="password" placeholder='{translate language=$language key="login_password" text="Password"}' autocapitalize="none" required>
                        <a href="#" onclick="$('#login-form').submit();" class="pure-button" id="login-submit">{translate language=$language key="log_in" text="Log In"}</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>

{/block}
