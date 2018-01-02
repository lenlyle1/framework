{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/body-weight">My Body Weight</a> / Other Resources</h3>

    <br>

    <!--HTML CONTENT GOES HERE-->

<h3>Other Resources</h3>
<h2>Resources</h2>
    <ul>
        <li><p>This resource provides an overview and additional tips and tools to understanding and approaching weight loss. Find weight control strategies that may work for you.</p><a href="http://www.nlm.nih.gov/medlineplus/weightcontrol.html" target="_blank">http://www.nlm.nih.gov/medlineplus/weightcontrol.html</a></li>
        
        <li><p>The Academy of Dietetics and Nutrition website is a good resource for healthy weight and weight loss. There are tips specific to health conditions, meal planning and more.</p><a href="http://www.eatright.org/Public/list.aspx?TaxID=6442451981" target="_blank">eatright.org/Public/list.aspx?TaxID=6442451981</a></li>
        <li><p>The Weight Control Information Networks, Choosing a Safe and Successful Weight-loss Program, is available online in print. It is a helpful resource for questions to ask yourself, your provider and programs that you are looking into.</p><a href="http://win.niddk.nih.gov/publications/choosing.htm" target="_blank">win.niddk.nih.gov/publications/choosing.htm</a></li>
    </ul>


{/block}
