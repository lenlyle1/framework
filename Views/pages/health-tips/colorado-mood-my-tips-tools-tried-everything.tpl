{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/mood">My Mood</a> / 
    <a href="/health-tips/{$data.location}/mood/my-tips-tools">My Tips and Tools</a> / Tips </h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
<h1>“I feel like I have tried just about everything and nothing makes me feel better”</h1>
<p>There are some alternative therapies that some people have found helpful for dealing with depression, such as music or art therapy, acupuncture, or even pet therapy. Please note that it is important to do your research and seek out an experienced practitioner or program.</p>

{/block}
