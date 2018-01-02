{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/tobacco-use">My Tobacco Use</a> / My Tips and Tools</h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
    <h3>Tips &amp; Tools</h3>
<p>Congratulations on making the decision to decrease your tobacco use! This section is intended to provide you with helpful tips and specific tools to help you succeed with your goals.</p>
<h3>Tools &amp; Strategies to decrease your tobacco use:</h3>
<p>Following is a list of common strategies to decrease your tobacco use.</p>



    <a href="/health-tips/{$data.location}/tobacco-use/my-tips-tools/quit-date">I will set a “quit date"</a>
    <br><br>
    <a href="/health-tips/{$data.location}/tobacco-use/my-tips-tools/free-resource">I will use the free resource from QuitLine or QuitNet</a>
    <br><br>
   <a href="/health-tips/{$data.location}/tobacco-use/my-tips-tools/nicotine-substitute">I will use a nicotine substitute like the patch or gum</a>
    <br><br>
    <a href="/health-tips/{$data.location}/tobacco-use/my-tips-tools/medication">I will talk with my healthcare team about starting a medication</a>
    

<h3>Tips for decreasing your tobacco use: What to do when…</h3>

    <a href="/health-tips/{$data.location}/tobacco-use/my-tips-tools/cravings">I’ve tried quitting smoking in the past and I end up giving into the nicotine cravings.</a>
    <br><br>
    <a href="/health-tips/{$data.location}/tobacco-use/my-tips-tools/cold-turkey">I’ve tried going “cold turkey” several times and it does not work for me.</a>
    <br><br>
    <a href="/health-tips/{$data.location}/tobacco-use/my-tips-tools/my-problem">I feel like smoking is my problem and I don’t want to ask my family to help me quit.</a>
    <br><br>
    <a href="/health-tips/{$data.location}/tobacco-use/my-tips-tools/stressed">I smoke when I am stressed, and if I can’t get a handle on my stress, I will never be able to stop smoking.</a>
    <br><br>
    <a href="/health-tips/{$data.location}/tobacco-use/my-tips-tools/socially">I like to have a cigarette when I go out socially with my family and friends.</a>

{/block}
