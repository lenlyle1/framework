{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/eating-habits">My Eating Habits</a> / <a href="/health-tips/{$data.location}/eating-habits/fat-intake">My Fat Intake</a> / My Tips & Tools</h3>

    <p>Congratulations on making the decision to eat less unhealthful fats! This section is intended to provide you with helpful tips and specific tools to help you succeed with your goals.</p>

    <h4>Tools & Strategies to Decrease Fat Intake</h4>

    <p>Following is a list of common strategies to decrease the amount of fat in your diet. Please click on the blue tab to receive a handout or tool that provides specific information to help you put your strategy into action:</p>

    <ul>
        <li><a href="/health-tips/{$data.location}/eating-habits/fat-intake/tips-tools/reduce-fast-food">I will reduce my fast food intake</a></li>
        <li><a href="/health-tips/{$data.location}/eating-habits/fat-intake/tips-tools/reduce-butter-oil">I will adjust my recipes to reduce the amount of butter, margarine, or oil I use</a></li>
        <li><a href="/health-tips/{$data.location}/eating-habits/fat-intake/tips-tools/reduce-red-meat">I will reduce my intake of red meat</a></li>
        <li><a href="/health-tips/{$data.location}/eating-habits/fat-intake/tips-tools/reduce-fried-food">I will reduce my intake of fried foods</a></li>
        <li><a href="/health-tips/{$data.location}/eating-habits/fat-intake/tips-tools/reduce-portion-size">I will decrease my portion sizes of high fat foods</a></li>
        <li><a href="/health-tips/{$data.location}/eating-habits/fat-intake/tips-tools/reduce-snack-food">I will reduce my intake of high fat snack foods</a></li>
    </ul>

    <h4>Tips for Decreasing Fat Intake</h4>

    <p>Here is a list of tips that may also help you decrease the amount of fat in your diet. What to do when …</p>

    <ul>
        <li><a href="/health-tips/{$data.location}/eating-habits/fat-intake/tips-tools/handle-fat-food">My family likes high-fat food</a></li>
        <li><a href="/health-tips/{$data.location}/eating-habits/fat-intake/tips-tools/handle-willpower">I have little or no willpower (especially when I'm stressed out)</a></li>
        <li><a href="/health-tips/{$data.location}/eating-habits/fat-intake/tips-tools/handle-cook-time">I don’t have time to cook</a></li>
        <li><a href="/health-tips/{$data.location}/eating-habits/fat-intake/tips-tools/handle-food-offers">I don’t know how to decline offers of unhealthful foods</a></li>
    </ul>

{/block}
