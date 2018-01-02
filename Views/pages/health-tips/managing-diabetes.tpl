{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / Managing My Diabetes</h3>

    <img src="/assets/images/photos/managing-diabetes/01.jpg" class="imgr" width="250">

<br>
    <p>{translate language=$language key="managing-diabetes-01" text="To get started, please click on one of the links below." substitutions=""}</p>

    <ul>
        <li><a href="http://www.learningaboutdiabetes.org/wp-content/uploads/pdfs-about_diabetes-viewonly/WhatIsDiabetesBK-EN.pdf" rel="nofollow" target="_blank">{translate language=$language key="managing-diabetes-02" text="What is Diabetes?" substitutions=""}</a></li>
        
        <br>
        <li><a href="http://www.diabetes.org/" rel="nofollow" target="_blank">{translate language=$language key="managing-diabetes-03" text="Resources and health tips from the American Diabetes Association" substitutions=""}</a></li>
        
        <br>
        <li><a href="http://www.learningaboutdiabetes.org/wp-content/uploads/pdfs-healthy_eating/PlateMethodENc.pdf" rel="nofollow" target="_blank">{translate language=$language key="managing-diabetes-04" text="More information on the plate method of healthy eating for diabetes" substitutions=""}</a></li>
        
        <br>
        <li><a href="http://www.learningaboutdiabetes.org/wp-content/uploads/pdfs-healthy_eating/EatThisNotThatEN.pdf" rel="nofollow" target="_blank">{translate language=$language key="managing-diabetes-05" text="Suggestions of replacement options for some common foods" substitutions=""}</a></li>
        
        <br>
        <li><a href="http://www.learningaboutdiabetes.org/wp-content/uploads/pdfs-be-active/WalkingWorksEN.pdf" rel="nofollow" target="_blank">{translate language=$language key="managing-diabetes-06" text="Tips for Diabetes and Walking" substitutions=""}</a></li>
        
        <br>
        <li><a href="http://www.connectiontohealth.com/docs/ADA%20Diabetes%20and%20Your%20Emotional%20Health%20EN.pdf" rel="nofollow" target="_blank">{translate language=$language key="managing-diabetes-07" text="Diabetes and your Emotional Health" substitutions=""}</a></li>
    </ul>

{/block}
