{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / Taking My Medication</h3>

    <img src="/assets/images/photos/taking-your-medicines/01.jpg" class="imgr" width="250">

    <p>{translate language=$language key="taking-medication-01" text="Many people have difficulty remembering to take their medications. But taking your medications as prescribed is very important for your health, especially if you have a chronic problem like high blood pressure or diabetes. Here are tips to help get the most out your medications to improve your health." substitutions=""}</p>

    <p>{translate language=$language key="taking-medication-02" text="To get started, please click on one of the links below." substitutions=""}</p>


    <ul>
        <li><a href="http://www.ahrq.gov/sites/default/files/publications/files/yourmeds_0.pdf" rel="nofollow" target="_blank">{translate language=$language key="taking-medication-03" text="Learn more about how to take your medications safely, questions to ask your health care team about medications, and tools for keeping track." substitutions=""}</a></li>
        
        
        <li><a href="http://www.safemedication.com/safemed/MyMedicineList/MyMedicineList_1.aspx" rel="nofollow" target="_blank">{translate language=$language key="taking-medication-04" text="A great first step is making a list of your current medications, click here for a tool to help you keep track!" substitutions=""}</a></li>
        
        
        <li><a href="http://connectiontohealth.com/docs/CTH.%20Health%20Tips.%20Taking%20Your%20Medications%20EN%209.1.16.pdf" rel="nofollow" target="_blank">{translate language=$language key="taking-medication-05" text="Tips and challenges for remembering to take your medications." substitutions=""}</a></li>
    </ul>

{/block}
