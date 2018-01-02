{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/tobacco-use">My Tobacco Use</a> / Other Resources</h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
    <h3>Other Resources</h3>
<h2>Online Information</h2>
    <p>The following Web sites provide free, accurate, evidence-based information and professional assistance to help support the immediate and long-term needs of people trying to quit smoking. If you want to quit, here's where you can find help:</p>
    <ul>
        <li>Smokefree.gov provides free, accurate, evidence-based information and professional assistance to help support the immediate and long-term needs of people trying to quit smoking. In English and Spanish.<br> <a target="_blank" href="http://smokefree.gov">smokefree.gov</a></li>
        <li>SmokefreeWomen help support the immediate and long-term needs of women trying to quit smoking.<br><a target="_blank" href="http://women.smokefree.gov/">women.smokefree.gov/</a></li>
        <li>BeTobaccoFree.gov is the Department of Health and Human Services' comprehensive Web site providing one-stop access to tobacco-related information from across its agencies. This consolidated resource includes general information on tobacco as well as federal and state laws and policies, health statistics, and evidence-based methods on how to quit.<br><a target="_blank" href="http://betobaccofree.hhs.gov">betobaccofree.hhs.gov</a></li>
    </ul>

{/block}
