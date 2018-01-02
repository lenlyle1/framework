{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / My Mood</h3>

    <img src="/assets/images/photos/depression-symptoms/01.jpg" class="imgr" width="250">

    <p>{translate language=$language key="mood-01" text="Sadness is a normal reaction to difficult times. Depression is different from sadness. Depression is a treatable illness that gets in the way of daily life – at work, at home, and in relationships. Like any illness, depression is not a sign of weakness or something you can just “snap out of.” In fact, most people who experience depression will need treatment to get better." substitutions=""}</p>

    <ul>
        <li><a href="http://www.connectiontohealth.com/docs/CTH.%20Health%20Tips.%20Facts%20About%20Depression%20EN%209.1.16.pdf" rel="nofollow" target="_blank">{translate language=$language key="mood-02" text="Here are some tips on how to recognize depression, and how to get help." substitutions=""}</a></li>
    </ul>

{/block}
