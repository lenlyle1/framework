{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/eating-habits">My Eating Habits</a> / My Fat Intake</h3>

    <p>Reducing the amount of fat you eat may help prevent heart disease, certain types of cancer, type 2 diabetes, and other illnesses. However, you need to have some fat in your diet to stay healthy, and the trick is to include the healthful  your diet. For more information about fats and your health, <a href="/health-tips/{$data.location}/eating-habits/fat-intake/fat-facts">please click here</a>.</p>

    <p>To get started, please click on one of the links below. We suggest that you start with My Tips and Tools.</p>

    <ul>
         <li>
             <a href="/health-tips/{$data.location}/eating-habits/fat-intake/tips-tools">My Tips & Tools</a>
             <br>
             Specific tools and tips for helping you decrease the amount of fat in your diet.
         </li>
         <li>
             <a href="/health-tips/{$data.location}/eating-habits/fat-intake/other-resources">Other Resources</a>
             <br>
             Local, state-wide, and national resources.
         </li>
         <li>
             <a href="/health-tips/{$data.location}/eating-habits/fat-intake/monitoring-progress">Monitoring My Progress</a><br>
             Tools to help you keep track of your progress toward your goal.
         </li>
    </ul>

{/block}
