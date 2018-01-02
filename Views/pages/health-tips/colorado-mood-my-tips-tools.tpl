{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/mood">My Mood</a> / My Tips and Tools</a></h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
<h3>Tips &amp; Tools</h3>
<p>Congratulations on making the decision to manage your mood! This section is intended to provide you with helpful tips and specific tools to help you succeed with your goals.</p>


<h3>Tools & Strategies to manage your mood:</h3>

<p>Following is a list of common strategies for managing your mood.</p>

<a href="/health-tips/{$data.location}/mood/my-tips-tools/depression">I will seek counseling to help me with managing my depression</a>
    <br><br>
    <a href="/health-tips/{$data.location}/mood/my-tips-tools/anti-depression">I will take an anti-depression medication or talk to my doctor about my current anti-depression medication</a>
    <br><br>
    <a href="/health-tips/{$data.location}/mood/my-tips-tools/stay-active">I will stay physically active to lower my depression symptoms</a>
    <br><br>
    <a href="/health-tips/{$data.location}/mood/my-tips-tools/engage">I will engage in healthful behaviors that may help me manage my depression, 
such as healthful eating, getting enough sleep, and utilizing stress management techniques</a>
    
   


   
<h3>Tips for managing your mood: What to do when…</h3>
    <a href="/health-tips/{$data.location}/mood/my-tips-tools/hard-time-bed">I feel so down that I have a hard time even getting out of bed.</a>
    <br><br>
    <a href="/health-tips/{$data.location}/mood/my-tips-tools/junk-food">I eat junk food when I get depressed, and then I feel even worse.</a>
    <br><br>
    <a href="/health-tips/{$data.location}/mood/my-tips-tools/sleeping">I have trouble sleeping when I feel depressed, and then I feel so tired the rest of the day.</a>
    <br><br>
    <a href="/health-tips/{$data.location}/mood/my-tips-tools/problems">When I feel depressed, I get so focused on my problems and I don’t get out and interact with others.</a>
    
    <br><br>
    <a href="/health-tips/{$data.location}/mood/my-tips-tools/tried-everything">I feel like I have tried just about everything and nothing makes me feel better.</a>

{/block}
