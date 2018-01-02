{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/taking-medication">Taking My Medication</a> / 
    <a href="/health-tips/{$data.location}/taking-medication/my-tips-tools">My Tips and Tools</a> / Tips </h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
<h1>I don’t like to take pills every day.</h1>

    <p>Your doctor has prescribed medication to help manage a health condition that you have. There are some chronic diseases, such as high blood pressure, type 2 diabetes, and high blood cholesterol, that can be controlled through lifestyle changes, such as weight loss, decreasing the salt and/or fat in your diet, and increasing your daily physical activity. Consult with your healthcare team regarding possible lifestyle changes you can make that may help you decrease or go off your medications all together. Be sure to talk to your doctor before discontinuing any prescribed medications.</p>

   
{/block}
