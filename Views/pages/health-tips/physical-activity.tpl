{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / My Physical Activity</h3>

    <img src="/assets/images/photos/physical-activity/01.jpg" class="imgr" width="250">

    <p>{translate language=$language key="physical-activity-01" text="Exercise takes time, but it can be fun and is an important part of staying healthy. Exercise can help you maintain a healthy weight and prevent health problems such as heart disease and diabetes. People who exercise regularly often live longer and feel better than people who don't." substitutions=""} </p> 
    
     <p>{translate language=$language key="physical-activity-02" text="Here are some tips to help you to be physically active and reach your health goals." substitutions=""}</p> 
    
     <p>{translate language=$language key="physical-activity-03" text="To get started, please click on one of the links below." substitutions=""}</p>

    <ul>
        <li><a href="http://www.choosemyplate.gov/sites/default/files/tentips/DGTipsheet30BeActiveAdults.pdf" rel="nofollow" target="_blank">{translate language=$language key="physical-activity-04" text="10 tips to include more physical activity in your life." substitutions=""}</a></li>
        
        
        <li><a href="http://www.niddk.nih.gov/health-information/health-topics/weight-control/walking-step-right-direction/Pages/walking-step-right-direction.aspx" rel="nofollow" target="_blank">{translate language=$language key="physical-activity-05" text="Step by step advice for starting a walking routine." substitutions=""}</a></li>
        
        
        
        <li><a href="http://cachampionsforchange.cdph.ca.gov/Documents/Get%20Moving/Landing%20Page/PA%20Empowerment%20Brochure.pdf" rel="nofollow" target="_blank">{translate language=$language key="physical-activity-06" text="Tips to getting moving at home, work, and in your neighborhood." substitutions=""}</a></li>
        
        
        <li><a href="http://cachampionsforchange.cdph.ca.gov/Documents/Get%20Moving/Landing%20Page/BRO-206_JUL_2010.pdf" rel="nofollow" target="_blank">{translate language=$language key="physical-activity-07" text="Power Up in 10 is a great start to getting your daily physical activity! This booklet has 10 basic strengthening exercises that you can do at home." substitutions=""}</a></li>
    </ul>

{/block}
