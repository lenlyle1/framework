{extends file='../site_base.tpl'}

{block name="content"}


<div class="container" style="padding: 20px 10px 30px 25px">

    <h3>{translate language=$language key="change_password" text="Change password"}</h3>

    <form action="/reset-password?token={$token}" method="post" autocomplete="off" novalidate>
    <input type="hidden" name="user_id" value="{$user_id}" />
        <p>{translate language=$language key="password_enter" text="Please enter a new password."}</p>

        <div  style="margin-top:20px; padding:0px"  class=" form-row">
            <label style="padding:0px;width:120px" for="password">{translate language=$language key="password_new" text="New Password"}</label>
            <input type="password" name="password" value="">
        </div>

        <div  style="margin-top:20px; padding:0px"  class=" form-row">
            <label style="padding:0px;width:120px" for="password">{translate language=$language key="confirm_password" text="Confirm Password"}</label>
            <input type="password" name="confirm_password" value="">
        </div>


        <button style="margin-top:40px" class="pure-button" type="submit">{translate language=$language key="submit" text="Submit"}</button>

    </form>

</div>
</form>

{/block}
