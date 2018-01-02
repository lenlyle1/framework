{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/mood">My Mood</a> / 
    <a href="/health-tips/{$data.location}/mood/my-tips-tools">My Tips and Tools</a> / Tips </h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
<h1>“I have trouble sleeping when I feel depressed, and then I feel so tired the rest of the day”</h1>
<p>A common symptom of depression is sleeplessness. When this occurs on an ongoing basis, it can make symptoms of depression worse. Talking to your doctor and healthcare team about your problems sleeping is the first step as there are some medications that may help you get a good night’s sleep. Additionally, you can try these strategies for “sleep hygiene”:</p>
<ul>
	<li>Set a “bedtime” and stick with it (even if you get into bed and read)</li>
	<li>Avoid caffeine and alcohol</li>
	<li>Remove anything distracting from your bedroom (i.e. TV or computer)</li>
	<li>Keep your bedroom at a desirable temperature</li>
</ul>

{/block}
