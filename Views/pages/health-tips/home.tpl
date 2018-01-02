{extends file='../../site_base.tpl'}

{block name="content"}


{translate language=$language key="health_tips_header" text="Health Tips"}


<h3>{translate language=$language key="health_tips_header" text="Health Tips"}</h3>
<h3 class="sh3">{translate language=$language key="health_tips_where_are_you" text="Where are you?"}</h3>


<div class="squares">

    <div class="square">
        <a href="/health-tips/california" class="square-blank">
            <span>California</span>
        </a>
    </div>

    <div class="square">
        <a href="/health-tips/colorado" class="square-blank">
            <span>Colorado</span>
        </a>
    </div>

    <div class="square">
        <a href="/health-tips/everywhere-else" class="square-blank">
            <span>{translate language=$language key="health_tips_everywhere_else" text="Everywhere Else"}</span>
        </a>
    </div>

</div>

{/block}
