{extends file='../site_base.tpl'}

{block name="content"}

<main role="main">
    <div class="wrap">
        <div class="container">
            <div class="login-box" style="height:auto;">
                {$page->content}
            </div>
        </div>
    </div>
</main>

{/block}


{block name="js" append}
    <script src="/assets/scripts/signup.js"></script>
{/block}