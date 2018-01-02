{extends file="../../site_base.tpl"}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/eating-habits">My Eating Habits</a> / My Salt Intake</h3>

    <img src="/assets/images/photos/salt-in-your-diet/01.jpg" class="imgr" width="250">
    
   

    <p>{translate language=$language key="eating-habits-salt-intake-01" text="Eating less salt can improve your blood pressure and lower your risk of heart disease, stroke, and other diseases." substitutions=""}</p>

    <p>{translate language=$language key="eating-habits-salt-intake-02" text="Here are some tips about how you can enjoy food with less salt and improve your health." substitutions=""}</p>

    <p>{translate language=$language key="eating-habits-salt-intake-03" text="To get started, please click on one of the links below." substitutions=""}</p>

    <ul>
        <li><a href="https://www1.nyc.gov/assets/doh/downloads/pdf/public/dohmhnews12-01.pdf" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-salt-intake-04" text="Learn to identify the high salt foods that you eat and tips for cutting back on salt." substitutions=""}</a></li>
        
        
        <li><a href="http://www.heart.org/HEARTORG/HealthyLiving/HealthyEating/Nutrition/The-Salty-Six-Infographic_UCM_446591_SubHomePage.jsp" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-salt-intake-05" text="The Salty Six! See the most common sources of salt in our food." substitutions=""}</a></li>
        
        
        <li><a href="http://www.heart.org/HEARTORG/HealthyLiving/HealthyEating/Nutrition/Sodium-Swap-Change-Your-Salty-Ways-in-21-Days-Infographic_UCM_455060_SubHomePage.jsp" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-salt-intake-06" text="Ideas for making a plan for change." substitutions=""}</a></li>
    </ul>

{/block}
