{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / My Mood</h3>

    <!--HTML CONTENT GOES HERE-->
    <br>
    
    
 <h3>Mood</h3>
    <p>Everyone occasionally feels blue or sad, but these feelings are usually short-lived and pass within a couple of days. However, if you feel this way for a longer period of time, you may have a condition called depression. When you have depression, it can interfere with your daily life and it is important that you discuss your symptoms with your doctor and healthcare team.  Most people can get better with treatment.</p>
    <p>We have tools and resources in this section that can help you meet your goals of managing your mood.</p>
    
    
    <p>To get started, please click on one of the links below. We suggest that you start with <em>My Tips &amp; Tools</em>.</p>
    
    
<ul>
	<li>
			<h2><a href="/health-tips/{$data.location}/mood/my-tips-tools">My Tips &amp; Tools</a></h2>
            
            
			<p>Where you can find specific tools and tips for helping you manage your mood.</p>
		
	</li>
	<li>
			<h2><a href="/health-tips/{$data.location}/mood/resources">Other Resources</a></h2>
			<p>Local, state-wide, and national resources.</p>
		
	</li>
	<li>
			<h2><a href="/health-tips/{$data.location}/mood/progress">Monitoring My Progress</a></h2>
			<p>Tools to help you keep track of your progress toward your goal.</p>
		
	</li>
</ul>

    
    
    
    
    
    

   


{/block}


