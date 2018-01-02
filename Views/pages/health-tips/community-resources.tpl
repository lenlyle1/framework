{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / Resources in My Community</h3>

    <img src="/assets/images/photos/resources-in-community/01.jpg" class="imgr" width="250">

    <p>{translate language=$language key="community-resources-01" text="It’s important to be able to find the people in the community who can help you and your family get through difficult times. Here are some resources to help you and your family find help with food, housing, transportation, medical assistance, job training, legal help, and more." substitutions=""}</p>

    <p>{translate language=$language key="community-resources-02" text="211 is the national, toll-free, phone number that you can call for information about all kinds of local health and social services. Calls are answered 24 hours a day, 7 days a week." substitutions=""}</p>

    <p>{translate language=$language key="community-resources-03" text="To get started, please click on one of the links below." substitutions=""}</p>

    <ul>
        <li><a href="https://www.1degree.org/" rel="nofollow" target="_blank">{translate language=$language key="community-resources-04" text="One Degree makes it easy to find food, housing, job training, after-school programs, and many more resources in your community." substitutions=""}</a></li>
    </ul>
    
    <ul>
        <li><a href="http://cccc.bowmansystems.com/" rel="nofollow" target="_blank">{translate language=$language key="community-resources-05" text="Resource Guides for Contra Costa County" substitutions=""}</a></li>
    </ul>

<ul>
        <li><a href="http://www.alamedaco.info/" rel="nofollow" target="_blank">{translate language=$language key="community-resources-06" text="Resource Guides for Alameda County" substitutions=""}</a></li>
    </ul>
    
    <ul>
        <li><a href="https://baylegal.org/get-help/" rel="nofollow" target="_blank">{translate language=$language key="community-resources-07" text="Bay Area Legal Aid" substitutions=""}</a></li>
    </ul>

{/block}
