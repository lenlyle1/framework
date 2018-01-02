{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/eating-habits">My Eating Habits</a> / My Salt Intake</h3>

   <p> Reducing the amount of salt in your diet may help to lower your blood pressure as studies have shown that a lower sodium intake can help people decrease their blood pressure. In fact, the DASH diet (Dietary Approaches to Stop Hypertension) showed that a diet low in sodium and high in fruits and vegetables reduced blood pressure. For more information on the DASH diet, <a href="/docs/dash_brief.pdf" target="_blank">please click here (PDF)</a>.</p>

   <p> The American Heart Association recommends consuming less than 2,300 mg of sodium each day (about 1 teaspoon). For people with high blood pressure, consuming a diet of less than 1,500 mg of sodium each day may have even better blood pressure lowering benefits. This section provides helpful information on ways to decrease your daily salt intake.</p>

   <p> To get started, please click on one of the links below. We suggest that you start with My Tips & Tools.</p>

    <ul>
         <li>
             <a href="/health-tips/{$data.location}/eating-habits/salt-intake/tips-tools">My Tips & Tools</a>
             <br>
             Specific tools and tips for helping you decrease the amount of salt in your diet, and determine other potential roadblocks that might interfere with reaching your goal.
         </li>
         <li>
             <a href="/health-tips/{$data.location}/eating-habits/salt-intake/other-resources">Other Resources</a>
             <br>
             Local, state-wide, and national resources.
         </li>
         <li>
             <a href="/health-tips/{$data.location}/eating-habits/salt-intake/monitoring-progress">Monitoring My Progress</a>
             <br>
             Tools to help you keep track of your progress toward your goal.
         </li>
    </ul>

{/block}
