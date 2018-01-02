{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / My Body Weight</h3>

    <!--HTML CONTENT GOES HERE-->
    <br>
    
    
    <h3>Body Weight</h3>
    <p>Congratulations on making the decision to manage your weight! Carrying excess weight increases your risk of diabetes, heart disease, stroke, arthritis, and some cancers. The good news is that losing even small amounts of weight can delay or prevent some of these diseases.</p>
    
    
    <p>We have tools and resources in this section that can help you meet your weight management goals.</p>
    
    <p>To get started, please click on one of the links below. We suggest that you start with <em>My Tips &amp; Tools</em>.</p>
    
    
    
<ul>
	<li>
			<h2><a href="/health-tips/{$data.location}/body-weight/my-tips-tools">My Tips &amp; Tools</a></h2>
            
            
			<p>Specific tools and tips for helping you manage your weight.</p>
		
	</li>
	<li>
			<h2><a href="/health-tips/{$data.location}/body-weight/resources">Other Resources</a></h2>
			<p>Local, state-wide, and national resources.</p>
		
	</li>
	<li>
			<h2><a href="/health-tips/{$data.location}/body-weight/progress">Monitoring My Progress</a></h2>
			<p>Tools to help you keep track of your progress toward your goal.</p>
		
	</li>
</ul>

    
    
    
    
    
    

   


{/block}


