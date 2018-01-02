{if LTE }
    {assign var='tpl' value='../admin_lte_base.tpl'}
{else}
    {assign var='tpl' value='../admin_base.tpl'}
{/if}

{extends file=$tpl}
