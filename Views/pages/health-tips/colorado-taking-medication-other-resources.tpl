{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/taking-medication">Taking My Medication</a> / Other Resources</a></h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
<h3>Other Resources</h3>
            
                <ul>
                    <li><p>The National Council on Patient Information and Education’s site has tips and tools to help patients talk to their doctors about medications along with information about assistance programs and the importance of taking medications as prescribed.</p><a href="http://www.talkaboutrx.org/" target="_blank">talkaboutrx.org</a></li>
	            <li><p>Specific resources to guide questions that you have about medications:</p><a href="http://www.talkaboutrx.org/med_users_tools.jsp" target="_blank">talkaboutrx.org/med_users_tools.jsp</a></li>
                    <li><p>Over the Counter medicines or OTC carry their own dosage and side effects. Learn about how these medications interact with your prescriptions medicines and ask you should ask when taking medications.</p><a href="http://www.bemedwise.org/" target="_blank">bemedwise.org</a></li>
                    <li><p>Information on prescription drugs and OTC medications.</p><a href="http://www.nlm.nih.gov/medlineplus/druginformation.html" target="_blank">nlm.nih.gov/medlineplus/druginformation.html</a></li>
                </ul>
    

{/block}
