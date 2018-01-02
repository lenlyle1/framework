{extends file="../../site_base.tpl"}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/eating-habits">My Eating Habits</a> / My Sugared Beverage Intake</h3>

    <img src="/assets/images/photos/sugary-drinks/01.jpg" class="imgr" width="250">

    <p>{translate language=$language key="eating-habits-sugary-drinks-01" text="Avoiding sugary drinks is one of the best ways to improve your health." substitutions=""}</p>

    <p>{translate language=$language key="eating-habits-sugary-drinks-02" text="Here are some tips about how to avoid sugary drinks and how to make choices that you and your family will enjoy." substitutions=""}</p>

    <p>{translate language=$language key="eating-habits-sugary-drinks-03" text="To get started, please click on one of the links below." substitutions=""}</p>

    <ul>
        <li><a href="http://choosehealthydrinks.org/" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-sugary-drinks-04" text="Learn more about how sugary drinks affect your health and how to choose healthy drinks" substitutions=""}</a></li>
        
        
        <li><a href="http://www.cutsugarydrinks.org/" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-sugary-drinks-05" text="Information about sugary drinks from First 5 Contra Costa" substitutions=""}</a></li>
        
        
        <li><a href="http://www.choosemyplate.gov/sites/default/files/tentips/DGTipsheet19MakeBetterBeverageChoices.pdf" rel="nofollow" target="_blank">{translate language=$language key="eating-habits-sugary-drinks-06" text="10 tips for making healthy beverage choices!" substitutions=""}</a></li>
    </ul>

{/block}
