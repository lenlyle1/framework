{extends file='../site_base.tpl'}

{block name="content"}

<div class="container" style="padding: 20px 10px 30px 25px">

    <h3>{translate language=$language key="password_change_header" text="Change password"}</h3>

    <form action="/forgot-password-request" method="post" autocomplete="off" novalidate>
{*
        <p>{translate language=$language key="password_change_description" text="Please enter your email address and we will send you instructions for resetting your password."}</p>

        <div  style="margin-top:20px; padding:0px"  class=" form-row">
            <label style="padding:0px;width:120px" for="email">{translate language=$language key="password_change_email_suggestion" text="Email address"}</label>
            <input type="email" name="email" value="">

        </div>
 *}

        <p>{translate language=$language key="password_change_description_username" text="Please enter your username and we will send you instructions for resetting your password."}</p>

        <div  style="margin-top:20px; padding:0px"  class=" form-row">
            <label style="padding:0px;width:120px" for="username">{translate language=$language key="password_change_username_suggestion" text="Username"}</label>
            <input type="text" name="username" value="">

        </div>


        <button style="margin-top:40px" class="pure-button" type="submit">{translate language=$language key="password_change_submit" text="Submit"}</button>

    </form>

</div>

{/block}
