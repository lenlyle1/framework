{extends file='./switcher.tpl'}

{block name="page_title"}Users{/block}

{block name="page_heading" append}
    > User > {$user->last_name}, {$user->first_name}
{/block}

{block name="search-bar"}
{/block}

{block name="content"}

    {if $userType}
        {include file="admin/pages/partials/user_staff.tpl"}
    {/if}

{/block}

{block name="footer_scripts" append}

<script src="/assets/scripts/admin/users.js"></script>

{/block}
