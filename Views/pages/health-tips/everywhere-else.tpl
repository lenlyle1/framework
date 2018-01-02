{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">{translate language=$language key="health_tips" text="Health Tips"}</a></h3>
    <h3 class="sh3">{$data.label}</h3>




    <p>{translate language=$language key="health_tips_else_pick_topic" text="Please click on a topic area below to receive information and tips to help you reach your goals:"}</p>

    <div class="squares">

        <div class="square">
            <a
                href="/health-tips/{$data.location}/eating-habits"
                style="background-image:url(/assets/images/photos/eating-habits/01.jpg)"
            >
                <span>{translate language=$language key="health_tips_topic_eating_habits" text="My Eating Habits"}</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/physical-activity"
                style="background-image:url(/assets/images/photos/physical-activity/01.jpg)"
            >
                <span>{translate language=$language key="health_tips_topic_physical_activity" text="My Physical Activity"}</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/taking-medication"
                style="background-image:url(/assets/images/photos/taking-your-medicines/01.jpg)"
            >
                <span>{translate language=$language key="health_tips_topic_medication_taking" text="Taking My Medication"}</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/alcohol-use"
                style="background-image:url(/assets/images/photos/drinking-alcohol/01.jpg)"
            >
                <span>{translate language=$language key="health_tips_topic_alcohol_use" text="My Alcohol Use"}</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/tobacco-use"
                style="background-image:url(/assets/images/photos/using-tobacco/01.jpg)"
            >
                <span>{translate language=$language key="health_tips_topic_tobacco_use" text="My Tobacco Use"}</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/community-resources"
                style="background-image:url(/assets/images/photos/resources-in-community/01.jpg)"
            >
                <span>{translate language=$language key="health_tips_topic_community_resources" text="Resources in My Community"}</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/managing-stress"
                style="background-image:url(/assets/images/photos/life-stress/01.jpg)"
            >
                <span>{translate language=$language key="health_tips_topic_stress" text="Managing My Stress"}</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/mood"
                style="background-image:url(/assets/images/photos/depression-symptoms/01.jpg)"
            >
                <span>{translate language=$language key="health_tips_topic_mood" text="My Mood"}</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/managing-diabetes"
                style="background-image:url(/assets/images/photos/managing-diabetes/01.jpg)"
            >
                <span>{translate language=$language key="health_tips_topic_diabetes" text="Managing Diabetes"}</span>
            </a>
        </div>
    </div>
{/block}
