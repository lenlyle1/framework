{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / My Alcohol Use</h3>

    <img src="/assets/images/photos/drinking-alcohol/01.jpg" class="imgr" width="250">

    <p>{translate language=$language key="alcohol-use-01" text="There are many ways to drink alcohol. For some people, drinking any alcohol at all can be dangerous. Even younger people under age 65 should not drink too much. For men, this means not drinking more than two drinks a day, and for women this means not drinking more than one drink a day. Even if you don't drink every day, it can be dangerous to drink several drinks in one day. Here are tips to help you manage your alcohol use safely and stay healthy." substitutions=""}</p>

    <p>{translate language=$language key="alcohol-use-02" text="Some people should not drink at all, including alcoholics, children, pregnant women, people on certain medicines and people with some medical conditions. If you have questions about whether it is safe for you to drink, speak with your physician or healthcare provider." substitutions=""}</p>

    <p>{translate language=$language key="alcohol-use-03" text="To get started, please click on one of the links below." substitutions=""}</p>

    <ul>
        <li><a href="http://www.rethinkingdrinking.niaaa.nih.gov/" rel="nofollow" target="_blank">{translate language=$language key="alcohol-use-04" text="Tips, tools, and resources to support cutting back or stopping drinking" substitutions=""}</a></li>
        <li><a href="http://pubs.niaaa.nih.gov/publications/RethinkingDrinking/Rethinking_Drinking.pdf" rel="nofollow" target="_blank">{translate language=$language key="alcohol-use-05" text="Strategies and tips for helping you make a change to your drinking" substitutions=""}</a></li>
        <li><a href="http://www.aa.org/" rel="nofollow" target="_blank">{translate language=$language key="alcohol-use-06" text="Find a local Alcoholics Anonymous chapter near you" substitutions=""}</a></li>
        <li>{translate language=$language key="alcohol-use-07" text="24 hour help hotline: 1-800-662-HELP (4357)" substitutions=""}</li>
    </ul>

{/block}
