{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/physical-activity">My Physical Activity</a> / My Tips and Tools</a></h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
<h3>Tips &amp; Tools</h3>
<p>Congratulations on making the decision to increase your physical activity! This section is intended to provide you with helpful tips and specific tools to help you succeed with your goals.</p>
<h3>Tools &amp; Strategies to Increase Physical Activity:</h3>
<p>Following is a list of common strategies to increase the amount of physical activity you do each week. Please click on the blue tab to receive a handout or tool to help you put your strategy into action!</p>

    <a href="/health-tips/{$data.location}/physical-activity/my-tips-tools/start-walking">I will start by walking 10 minutes each day, increasing by 5 minutes per day each week until I reach 30 minutes</a>
    <br><br>
    <a href="/health-tips/{$data.location}/physical-activity/my-tips-tools/find-activity">I will find a type of physical activity I enjoy doing and work up to 30 minutes each day (walking, biking, swimming, skating, dancing, etc.)</a>
    <br><br>
   <a href="/health-tips/{$data.location}/physical-activity/my-tips-tools/join-gym">I will join my local gym, YMCA, recreation center, or mall walking program</a>
    <br><br>
    <a href="/health-tips/{$data.location}/physical-activity/my-tips-tools/personal-trainer">I will work with a personal trainer</a>

<h3>Tips for Increasing Physical Activity: What to do when…</h3>

    <a href="/health-tips/{$data.location}/physical-activity/my-tips-tools/too-tired">Too tired to exercise/ I am too pooped</a>
    <br><br>
    <a href="/health-tips/{$data.location}/physical-activity/my-tips-tools/dont-like">I just don’t like exercise</a>
    <br><br>
    <a href="/health-tips/{$data.location}/physical-activity/my-tips-tools/not-enough-time">I don’t have enough time to work out</a>
    <br><br>
    <a href="/health-tips/{$data.location}/physical-activity/my-tips-tools/out-of-shape">I am too out of shape to exercise</a>
    <br><br>
    <a href="/health-tips/{$data.location}/physical-activity/my-tips-tools/too-old">I am too old to exercise</a>
    <br><br>
    <a href="/health-tips/{$data.location}/physical-activity/my-tips-tools/too-ill">I am in too ill health to exercise</a>
    <br><br>
    <a href="/health-tips/{$data.location}/physical-activity/my-tips-tools/weather">The weather makes it difficult to exercise</a>

{/block}
