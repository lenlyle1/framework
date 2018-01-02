{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/alcohol-use">My Alcohol Use</a> / Other Resources</h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
<h3>Other Resources</h3>
<h2>Online</h2>
    <ul>
        <li><p>Alcoholics Anonymous is a national and local resource for support groups and mentors to help individuals and families affected by alcoholism.</p>
        <a href="http://www.aa.org/" target="_blank">alcoholics-anonymous.org</a></li>
        <li><p>Al-Anon’s organization and meetings aim to provide strength and hope for families and friends affected by problem drinkers.</p><a href="http://www.al-anon.org/" target="_blank">al-anon.org</a></li>
        <li><p>National Institute on Alcohol Abuse and Alcoholism’s website is an educational resource for statistics and tools to evaluate drinking patterns and support resources.</p><a href="http://www.niaaa.nih.gov/alcohol-health" target="_blank">niaaa.nih.gov/alcohol-health</a></li>
        <li><p>The Rethinking Drinking site is rich source of tools and strategies to decrease alcohol consumption.</p><a href="http://rethinkingdrinking.niaaa.nih.gov/" target="_blank">rethinkingdrinking.niaaa.nih.gov/</a></li>
    </ul>
<h2>Self-help Support Groups for Alcohol Addiction</h2>
    <ul>
        <li><p>Secular Organizations for Sobriety (SOS)</p><a href="http://www.sossobriety.org/" target="_blank">sossobriety.org</a></li>
        <li><p>SMART Recovery</p><a href="http://www.smartrecovery.org/" target="_blank">smartrecovery.org</a></li>
        <li><p>Women for Sobriety (WFS)</p><a href="http://www.womenforsobriety.org/" target="_blank">womenforsobriety.org</a></li>
    </ul>
<h2>Phone Support: For locating a drug and alcohol treatment program in your area</h2>
    <ul>
        <li><p>Assessment Center Drug and Alcohol Abuse Hotline <br><span style="color: #337ab7">(800) 234-0420</span></p></li>
        <li><p>National Alcohol and Drug Help Hotline <br><span style="color: #337ab7">(800) 821-HELP (4357)</span></p></li>
    </ul>

{/block}
