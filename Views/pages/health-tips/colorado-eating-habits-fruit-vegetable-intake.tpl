{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/eating-habits">My Eating Habits</a> / My Fruit & Vegetable Intake</h3>

    <p>Congratulations on making the decision to increase your Fruit & Vegetable servings each day! That’s a big step toward improving your overall health and the health of your family. Research has shown that eating at least 5 servings of fruits & vegetables every day can lower your risk of certain cancers, heart disease, and diabetes.</p>

    <p>Besides being packed full of nutrients, fruits & vegetables can also be quite filling. They may even ward off any empty calorie snacking that might follow! Don’t be discouraged by the recommended 5 servings a day. We have tools and resources in this section that can help you meet your goals.</p>

    <p>To get started, please click on one of the links below. We suggest that you start with My Tips & Tools.</p>

    <ul>
         <li>
             <a href="/health-tips/{$data.location}/eating-habits/fruit-vegetable-intake/tips-tools">My Tips & Tools</a>
             <br>
             Specific tools and tips for helping you increase the number of servings of fruits & vegetables in your diet.
         </li>
         <li>
             <a href="/health-tips/{$data.location}/eating-habits/fruit-vegetable-intake/other-resources">Other Resources</a>
             <br>
             Local, state-wide, and national resources.
         </li>
         <li>
             <a href="/health-tips/{$data.location}/eating-habits/fruit-vegetable-intake/monitoring-progress">Monitoring My Progress</a>
             <br>
             Tools to help you keep track of your progress toward your goal.
         </li>
    </ul>

{/block}
