{extends file='../site_base.tpl'}

{block name="content"}

<main role="main">
    <div class="wrap">
        <div class="container">
            <div class="login-box" style="height:auto;">
                <div class="login-header">
                    <p>{translate language=$language key="sign_up" text="Sign up"}</p>
                </div>
                {include 'pages/partials/user_details_form.tpl'}
            </div>
        </div>
    </div>
</main>

{/block}


{block name="js" append}
    <script src="/assets/scripts/signup.js"></script>
{/block}