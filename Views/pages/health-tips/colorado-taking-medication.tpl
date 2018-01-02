{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / Taking My Medication</h3>

    <!--HTML CONTENT GOES HERE-->
    <br/>
    
    
    <h3>Medication</h3>
<p>It is common for people to forget to take their medicines every once in a while. However, taking your medications as prescribed by your clinician is very important for your health. We have tools and resources in this section that can help you meet your goals of taking your medications.</p>

<p>To get started, please click on one of the links below. We suggest that you start with My Tips &amp; Tools.</p>
    
    

   
<ul>
	<li>
			<h2><a href="/health-tips/{$data.location}/taking-medication/my-tips-tools">My Tips &amp; Tools</a></h2>
			<p>Specific tools and tips for helping you take your medications.</p>
	</li>
	<li>
			<h2><a href="/health-tips/{$data.location}/taking-medication/other-resources">Other Resources</a></h2>
			<p>Local, state-wide, and national resources.</p>
	</li>
	<li>
			<h2><a href="/health-tips/{$data.location}/taking-medication/monitor-progress">Monitoring My Progress</a></h2>
			<p>Tools to help you keep track of your progress toward your goal.</p>
		</a>
	</li>
</ul>

{/block}


