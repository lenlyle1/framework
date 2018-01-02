{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/alcohol-use">My Alcohol Use</a> / My Tips and Tools</h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
<h3>Tips &amp; Tools</h3>
<p>Congratulations on making the decision to decrease your alcohol use! This section is intended to provide you with helpful tips and specific tools to help you succeed with your goals.</p>
<h3>Tools &amp; Strategies for decreasing your alcohol use:</h3>
<p>Following is a list of common strategies for decreasing your alcohol use. Please click on the blue tab to receive a handout or tool to help you put your strategy into action!</p>



    <a href="/health-tips/{$data.location}/alcohol-use/my-tips-tools/decrease-intake">I will decrease my alcohol intake by 1 drink each day</a>
    <br><br>
    <a href="/health-tips/{$data.location}/alcohol-use/my-tips-tools/decrease-weekly">I will decrease my weekly alcohol intake to meet the moderate drinking guidelines</a>
    <br><br>
   <a href="/health-tips/{$data.location}/alcohol-use/my-tips-tools/support-group">I will join a support group for decreasing my alcohol intake</a>
    <br><br>
    <a href="/health-tips/{$data.location}/alcohol-use/my-tips-tools/ask-spouse">I will ask my spouse, family member, care giver, or friend to help me to decrease my alcohol intake</a>
    <br><br>
    <a href="/health-tips/{$data.location}/alcohol-use/my-tips-tools/avoid-social">I will avoid social situations where people drink</a>

<h3>Tips for for decreasing your alcohol use: What to do when…</h3>

    <a href="/health-tips/{$data.location}/alcohol-use/my-tips-tools/urge-drink">I have the urge to drink but I am committed to cutting out alcohol</a>
    <br><br>
    <a href="/health-tips/{$data.location}/alcohol-use/my-tips-tools/stressed">I drink when I am stressed out</a>
    <br><br>
    <a href="/health-tips/{$data.location}/alcohol-use/my-tips-tools/felt-better">I feel like I would do better with decreasing my alcohol if I felt better</a>
    <br><br>
    <a href="/health-tips/{$data.location}/alcohol-use/my-tips-tools/not-worked">I’ve tried cutting back on my drinking in the past and it has not worked</a>
    <br><br>
    <a href="/health-tips/{$data.location}/alcohol-use/my-tips-tools/spouse-drinks">I want to stop drinking but my spouse drinks and keeps alcohol in the house</a>

{/block}
