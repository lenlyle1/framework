{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / My Tobacco Use</h3>

    <img src="/assets/images/photos/using-tobacco/01.jpg" class="imgr" width="250">

    <p>{translate language=$language key="tobacco-use-01" text="Tobacco use, even in small amounts, can be dangerous for your health. Quitting tobacco products reduces your risk of of cancer and heart disease." substitutions=""}</p>

    <p>{translate language=$language key="tobacco-use-02" text="Here are tips to help you quit tobacco." substitutions=""}</p>

    <p>{translate language=$language key="tobacco-use-03" text="To get started, please click on one of the links below." substitutions=""}</p>

    <ul>
        <li><a href="http://www.smokefree.gov/" rel="nofollow" target="_blank">{translate language=$language key="tobacco-use-04" text="Smokefree.gov provides information and professional assistance to help support the immediate and long-term needs of people trying to quit smoking." substitutions=""}</a></li>
    </ul>

{/block}
