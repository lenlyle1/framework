{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/mood">My Mood</a> / 
    <a href="/health-tips/{$data.location}/mood/my-tips-tools">My Tips and Tools</a> / Tips </h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
<h1>“I feel so down that I have a hard time even getting out of bed”</h1>
<p>Depression can make it difficult to do even the basic activities of daily living. In addition to working with your doctor and healthcare team on managing your depression, consider setting one small goal for yourself each day, such as “I will get up and walk the dog for 10 minutes in the morning”. Also consider planning one activity that you enjoy each day into your schedule, such as talking to a friend or family member, taking a bath, or getting a massage.</p>
{/block}
