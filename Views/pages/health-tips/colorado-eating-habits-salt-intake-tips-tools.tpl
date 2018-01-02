{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/eating-habits">My Eating Habits</a> / <a href="/health-tips/{$data.location}/eating-habits/salt-intake">My Salt Intake</a> / My Tips & Tools</h3>

    Congratulations on making the decision to eat less salt! This section is intended to provide you with helpful tips and specific tools to help you succeed with your goals.

    Following is a list of common strategies to decrease the amount of salt in your diet. Please click on the blue tab to receive a handout or tool to help you put your strategy into action!

    Tools & Strategies to Decrease Salt Intake

    Following is a list of common strategies to decrease the amount of salt in your diet. Please click on the blue tab to receive a handout or tool that provides specific information to help you put your strategy into action:

    <ul>
        <li><a href="/health-tips/{$data.location}/eating-habits/salt-intake/tips-tools/low-salt-alt">I will increase the amount of low-salt alternatives for cooking and food preparation</a></li>
        <li><a href="/health-tips/{$data.location}/eating-habits/salt-intake/tips-tools/reduce-high-salt">I will reduce the amount of high-salt foods I eat</a></li>
        <li><a href="/health-tips/{$data.location}/eating-habits/salt-intake/tips-tools/reduce-salt">I will reduce the amount of salt that I use on my food</a></li>
    </ul>

    <h4>Tips for Decreasing Salt Intake: What to do when…</h4>

    <p>Here is a list of tips that may also help you decrease the amount of fat in your diet. What to do when …</p>

    <ul>
        <li><a href="/health-tips/{$data.location}/eating-habits/salt-intake/tips-tools/chef-salt">I eat out a lot and don’t have any control over how much salt the chef uses!</a></li>
        <li><a href="/health-tips/{$data.location}/eating-habits/salt-intake/tips-tools/bowl-of-soup">I enjoy eating a bowl of soup for lunch in the wintertime, yet I’m concerned about the sodium content</a></li>
    </ul>

{/block}
