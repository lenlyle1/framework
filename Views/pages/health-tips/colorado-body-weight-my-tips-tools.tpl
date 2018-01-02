{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/body-weight">My Body Weight</a> / My Tips and Tools</h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
 <h3>Tips &amp; Tools</h3>
<p>Congratulations on making the decision to manage your weight! This section is intended to provide you with helpful tips and specific tools to help you succeed with your goals.</p>
<h3>Tools &amp; Strategies to Manage your Weight:</h3>
<p>Following is a list of common strategies to manage your weight. Please click on the blue tab to receive a handout or tool to help you put your strategy into action!</p>


    <a href="/health-tips/{$data.location}/body-weight/my-tips-tools/cut-fat-sugar">I will cut out one high fat or high sugar food in my diet</a>
    <br><br>
    
    <a href="/health-tips/{$data.location}/body-weight/my-tips-tools/decrease-portions">I will decrease the portion sizes I eat</a>
    
    <br><br>
    <a href="/health-tips/{$data.location}/body-weight/my-tips-tools/weight-loss-program">I will join a weight loss program, such as Weight Watchers</a>
    
    <br><br>
    <a href="/health-tips/{$data.location}/body-weight/my-tips-tools/healthcare-plan">I will work with my doctor, dietitian, or healthcare team to set up a specific weight loss plan</a>
    
    <br><br>
    <a href="/health-tips/{$data.location}/body-weight/my-tips-tools/physical-activity">I will increase my daily physical activity</a>

<h3>Tips for managing your weight: What to do when…</h3>
    <a href="/health-tips/{$data.location}/body-weight/my-tips-tools/weight-discouraged">I feel like I have so much weight to lose and I get discouraged even getting started</a>
    
    <br><br>
   <a href="/health-tips/{$data.location}/body-weight/my-tips-tools/flavored-coffee">I really like flavored coffee drinks and they are such a treat for me in the morning</a>
    
    <br><br>
    <a href="/health-tips/{$data.location}/body-weight/my-tips-tools/so-hungry">I’m so hungry when I get home in the evening that I eat everything that is not “nailed down”, and then I eat dinner</a>
    
    <br><br>
    <a href="/health-tips/{$data.location}/body-weight/my-tips-tools/hate-weigh">I hate to weigh myself and I want to throw out my home scale</a>
    
    <br><br>
    <a href="/health-tips/{$data.location}/body-weight/my-tips-tools/deprived">Every time I “diet” I feel so deprived of my favorite foods, and then I “pig out” on every sweet thing I can get my hands on</a>

{/block}
