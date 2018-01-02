{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/eating-habits">My Eating Habits</a> / My Sugared Beverage Intake</h3>

   <p> Congratulations on making the decision to decrease your sugared beverage intake each day! The average American ingests 34 spoonfuls of added sugar each day — that’s 12,480 teaspoons each year or 130 pounds of sugar each year! And as no surprise, people who consume two or more sugared beverages each day have higher rates of overweight and obesity.</p>

    <p>Decreasing the amount of sugared beverages you drink each day may help you lose some weight, improve your overall diet, and improve your health. We have tools and resources in this section that can help you meet your goals.</p>

   <p> To get started, please click on one of the links below. We suggest that you start with My Tips & Tools.</p>

    <ul>
         <li>
             <a href="/health-tips/{$data.location}/eating-habits/sugary-drinks/tips-tools">My Tips & Tools</a>
             <br>
             Specific tools and tips for helping you decrease the amount of sugared beverages in your diet.
         </li>
         <li>
             <a href="/health-tips/{$data.location}/eating-habits/sugary-drinks/other-resources">Other Resources</a>
             <br>
             Local, state-wide, and national resources.
         </li>
         <li>
             <a href="/health-tips/{$data.location}/eating-habits/sugary-drinks/monitoring-progress">Monitoring My Progress</a>
             <br>Tools to help you keep track of your progress toward your goal.
         </li>
    </ul>

{/block}
