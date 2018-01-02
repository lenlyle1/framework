{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/eating-habits">My Eating Habits</a> / Healthy Eating</h3>

    <img src="/assets/images/photos/eating-fruits/01.jpg" class="imgr" width="250">






    <p>{translate language=$language key="eating-habits-healthy-eating-01" text="Eating nutritious meals in right-sized portions will help keep you and your family healthier." substitutions=""}</p>

    <p>{translate language=$language key="eating-habits-healthy-eating-02" text="Here are some tips to help you create healthy and balanced meals on a budget." substitutions=""}</p>

    <p>{translate language=$language key="eating-habits-healthy-eating-03" text="To get started, please click on one of the links below." substitutions=""}</p>

    <ul>
        <li><a href="http://www.hsph.harvard.edu/nutritionsource/healthy-eating-plate/" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-healthy-eating-04" text="Use The Healthy Eating Plate guide for creating healthy and balanced meals" substitutions=""}</a></li>


         <li><a href="http://www.choosemyplate.gov/MyPlate" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-healthy-eating-05" text="Explore ChooseMyPlate for tips on healthy eating, recipes, and more!" substitutions=""}</a></li>


         <li><a href="http://www.whatscooking.fns.usda.gov/" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-healthy-eating-06" text="Healthy eating recipes" substitutions=""}
         </a></li>


         <li><a href="http://www.choosemyplate.gov/sites/default/files/misc/tools/MeetingYourMyPlateGoalsOnABudget.pdf" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-healthy-eating-07" text="Meeting your healthy eating goals on a budget" substitutions=""}</a></li>



         <li><a href="http://www.choosemyplate.gov/budget" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-healthy-eating-08" text="Healthy eating tips on a budget" substitutions=""}</a></li>


         <li><a href="http://www.choosemyplate.gov/sites/default/files/tentips/DGTipsheet25HealthyEatingActiveLifestyle.pdf" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-healthy-eating-09" text="10 tips for healthy eating" substitutions=""}</a></li>


         <li><a href="https://choosemyplate-prod.azureedge.net/sites/default/files/tentips/DGTipsheet2AddMoreVegetables.pdf" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-healthy-eating-10" text="10 tips for adding more vegetables to your diet" substitutions=""}</a></li>


         <li><a href="http://www.diabetes.org/food-and-fitness/food/planning-meals/create-your-plate/" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-healthy-eating-11" text="An interactive program to create your own meal plate!" substitutions=""}</a></li>
     </ul>
{/block}
