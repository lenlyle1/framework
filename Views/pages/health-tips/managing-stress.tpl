{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / Managing My Stress</h3>

    <img src="/assets/images/photos/life-stress/01.jpg" class="imgr" width="250">

    <p>{translate language=$language key="managing-stress-01" text="Stress is a normal psychological and physical reaction to day-to-day life demands. Without stress management techniques, your body is continually on “high alert”, which can lead to some serious health problems. We have tools and resources in this section that can help you meet your goals of helping you manage your stress." substitutions=""}</p>

    <p>{translate language=$language key="managing-stress-02" text="To get started, please click on one of the links below." substitutions=""}</p>

    <ul>
        <li><a href="http://www.heart.org/HEARTORG/GettingHealthy/StressManagement/Stress-Management_UCM_001082_SubHomePage.jsp" rel="nofollow" target="_blank">{translate language=$language key="managing-stress-03" text="Here are some tips from the American Heart Association to help you understand how stress can be unhealthy and some ideas about how to improve your health by managing and reducing stress." substitutions=""}<a></li>

        <br>
        <li><a href="https://s-media-cache-ak0.pinimg.com/736x/64/02/81/64028109709cb8cefc7f01247cb12ed2.jpg" rel="nofollow" target="_blank">{translate language=$language key="managing-stress-04" text="Common stresses, how you might feel the effects of stress in your body, and tips to reduce your stress" substitutions=""}</a></li>

        <br>
        <li><a href="http://connectiontohealth.com/docs/CTH.%20Health%20Tips%20Facts%20About%20Stress%20EN%209.1.16.pdf" rel="nofollow" target="_blank">{translate language=$language key="managing-stress-05" text="Facts about stress, and ways to manage stress" substitutions=""}</li></a>
    </ul>

{/block}
