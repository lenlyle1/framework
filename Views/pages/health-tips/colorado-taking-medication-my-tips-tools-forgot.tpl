{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/taking-medication">Taking My Medication</a> / 
    <a href="/health-tips/{$data.location}/taking-medication/my-tips-tools">My Tips and Tools</a> / Tips </h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
<h1>I forgot to take a dose of my medication.</h1>

    <p>If you do forget to take a dose, read the instructions that come with your medication carefully. Don’t assume that you should take your dose anyway. If you are still not sure, then call your doctor’s office.</p>

   
{/block}
