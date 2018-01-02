{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / My Physical Activity</h3>

    <!--HTML CONTENT GOES HERE-->
    <br/>
    <h3>Physical Activity</h3>
    <p>Congratulations on making the decision to increase your physical activity! There are 1,440 minutes in every day. Schedule 30 of them for physical activity!</p>
    <p>Regular exercise is a critical part of staying healthy. People who are active live longer and feel better. Exercise can help you maintain a healthy weight; and delay or prevent diabetes, some cancers and heart problems.</p>
    <p>Most adults need at least 30 minutes of moderate physical activity at least five days per week. Examples include walking briskly, mowing the lawn, dancing, swimming for recreation or bicycling. Stretching and weight training can also strengthen your body and improve your fitness level.</p>
    <p><span>We have tools and resources in this section that can help you meet your physical activity goals.</p> 
    
    <p>To get started, please click on one of the links below. We suggest that you start with My Tips &amp; Tools.</span></p>
<ul>
	<li>
			<h2><a href="/health-tips/{$data.location}/physical-activity/my-tips-tools">My Tips &amp; Tools</a></h2>
			<p>Specific tools and tips for helping you increase the amount of physical activity in your daily life.</p>
	</li>
	<li>
			<h2><a href="/health-tips/{$data.location}/physical-activity/other-resources">Other Resources</a></h2>
			<p>Local, state-wide, and national resources.</p>
	</li>
	<li>
			<h2><a href="/health-tips/{$data.location}/physical-activity/monitor-progress">Monitoring My Progress</a></h2>
			<p>Tools to help you keep track of your progress toward your goal.</p>
		</a>
	</li>
</ul>

{/block}


