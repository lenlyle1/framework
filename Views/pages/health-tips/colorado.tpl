{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3">{$data.label}</h3>

    <p>Please click on a topic area below to receive information and tips to help you reach your goals:</p>

    <div class="squares">

        <div class="square">
            <a
                href="/health-tips/{$data.location}/eating-habits"
                style="background-image:url(/assets/images/photos/eating-habits/01.jpg)"
            >
                <span>My Eating Habits</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/physical-activity"
                style="background-image:url(/assets/images/photos/physical-activity/01.jpg)"
            >
                <span>My Physical Activity</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/taking-medication"
                style="background-image:url(/assets/images/photos/taking-your-medicines/01.jpg)"
            >
                <span>Taking My Medication</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/body-weight"
                style="background-image:url(/assets/images/photos/your-weight/01.jpg)"
            >
                <span>My Body Weight</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/alcohol-use"
                style="background-image:url(/assets/images/photos/drinking-alcohol/01.jpg)"
            >
                <span>My Alcohol Use</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/tobacco-use"
                style="background-image:url(/assets/images/photos/using-tobacco/01.jpg)"
            >
                <span>My Tobacco Use</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/managing-stress"
                style="background-image:url(/assets/images/photos/life-stress/01.jpg)"
            >
                <span>Managing My Stress</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/mood"
                style="background-image:url(/assets/images/photos/depression-symptoms/01.jpg)"
            >
                <span>My Mood</span>
            </a>
        </div>

        <div class="square">
            <a
                href="/health-tips/{$data.location}/managing-diabetes"
                style="background-image:url(/assets/images/photos/managing-diabetes/01.jpg)"
            >
                <span>Managing Diabetes</span>
            </a>
        </div>

    </div>

{/block}
