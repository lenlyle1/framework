{extends file='../site_base.tpl'}

{block name="content"}

<h3>{translate language=$language key="account_details" text="Account Details"}</h3>

<p>{translate language=$language key="account_instructions1" text="Please update your account."}</p>

<form class="pure-form pure-form-stacked"  method="post">
    {if $user->username == ''}
        <label for="username">{translate language=$language key="username_username" text="Username"}</label>
        <input type="text" id="username" name="username" placeholder='{translate language=$language key="username_placeholder_username" text="Username"}' required>
        {if $error[0]['username']}
            <div>{$error[0]['username']}</div>
        {/if}
    {/if}
    {if !$user->hasPassword}
        <label for="password">{translate language=$language key="password_password" text="Password"}</label>
        <input type="password" id="password" name="password" placeholder='{translate language=$language key="password_placeholder_password" text="Password"}' required>
        <label for="email">{translate language=$language key="password_confirm" text="Confirm Password"}</label>
        <input id="email" name="confirm_password" type="password" placeholder='{translate language=$language key="password_placeholder_confirm" text="Confirm Password"}' required>
    {/if}
    <input type="submit" value="Save"  class="pure-button" />
</form>

{/block}
