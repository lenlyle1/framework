{extends file='../../site_base.tpl'}

{block name="content"}
    <h3><a href="/health-tips">{translate language=$language key="health_tips" text="Health Tips"}</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / {translate language=$language key="health_tips_else_eating_habits" text="My Eating Habits"}</h3>
    <p>{translate language=$language key="health_tips_else_next_step" text="Next, click on one of the dietary topic areas below:"}</p>
    <div class="squares">
        <div class="square">
            <a href="/health-tips/{$data.location}/eating-habits/healthy-eating" style="background-image:url(/assets/images/photos/eating-fruits/01.jpg)">
                <span>{translate language=$language key="health_tips_else_healthy_eating" text="Healthy Eating"}</span>
            </a>
        </div>
        <div class="square">
            <a href="/health-tips/{$data.location}/eating-habits/salt-intake" style="background-image:url(/assets/images/photos/salt-in-your-diet/01.jpg)">
                <span>{translate language=$language key="health_tips_else_salt_intake" text="My Salt Intake"}</span>
            </a>
        </div>
        <div class="square">
            <a href="/health-tips/{$data.location}/eating-habits/sugary-drinks" style="background-image:url(/assets/images/photos/sugary-drinks/01.jpg)">
                <span>{translate language=$language key="health_tips_else_sugar_intake" text="My Sugared Beverage Intake"}</span>
            </a>
        </div>
    </div>
{/block}
