{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / My Eating Habits</h3>

    <p>Next, click on one of the dietary topic areas below:</p>

    <div class="pure-g">
        <a class="pure-u-1 pure-u-md-1-3" href="/health-tips/{$data.location}/eating-habits/fat-intake">
            <div>
                <h3>My Fat Intake</h3>
            </div>
        </a>
        <a class="pure-u-1 pure-u-md-1-3" href="/health-tips/{$data.location}/eating-habits/fruit-vegetable-intake">
            <div>
                <h3>My Fruit & Vegetable Intake</h3>
            </div>
        </a>
        <a class="pure-u-1 pure-u-md-1-3" href="/health-tips/{$data.location}/eating-habits/salt-intake">
            <div>
                <h3>My Salt Intake</h3>
            </div>
        </a>
        <a class="pure-u-1 pure-u-md-1-3" href="/health-tips/{$data.location}/eating-habits/sugary-drinks">
            <div>
                <h3>My Sugared Beverage Intake</h3>
            </div>
        </a>
    </div>

{/block}
