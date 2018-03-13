{extends file='../site_base.tpl'}

{block name="head_extra"}
<link rel="stylesheet" href="/assets/styles/form-pager.css">
<link rel="stylesheet" href="/assets/styles/survey.css">
<meta name="survey_id" content="{$survey_id}">
<meta name="alcohol_set" content="false">
<meta name="medicine_set" content="false">
<!-- Feels overkill, but this helps the form pager JS function in IE10 as we're using ES5 method(s): -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/es5-shim/4.5.7/es5-shim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/es5-shim/4.5.7/es5-sham.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/es6-shim/0.34.2/es6-shim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/es6-shim/0.34.2/es6-sham.min.js"></script>
{/block}

{block name="navigation"}{/block}
{block name="main_header"}{/block}
{block name="header_banner"}{/block}
{block name="main"}
<div id="healthsurvey">
    <div>
        <div id="survey_selection" class="workflow">
            <div class="squares">
                <div class="square">
                    <a href="new_survey" class="survey_navigator start_survey square-blank">
                        <span>{translate language=$language key="health_survey_new_survey" text="Start a New Survey"}</span>
                    </a>
                </div>
                {if $incomplete_survey}
                    <div class="square">
                        <a href="surveyresults" class="survey_navigator resume_survey square-blank">
                            <span>{translate language=$language key="health_survey_continue_survey" text="Continue a Survey"}</span>
                        </a>
                    </div>
                {/if}
            </div>
        </div>

        <div id="form_container" class="hidden_obj">

            <div id="progress"><span>0%</span><div></div></div>

            <div id="form-pager">

                <form class="pure-form steps" action="#">

                    <section id="page1" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/welcome-to-the-health-survey-road-sign/01.jpg">
                            </div>
                            <div>
                                <h4 class="h2 contains-audio">
                                    <span class="audio"><audio src="/audio/a1_1_heading_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_welcome_header" text="Welcome to the Health Survey" substitutions=""}
                                </h4>
                                <p class="contains-audio special-size">
                                    <span class="audio"><audio src="/audio/a1_3_speakersymb_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_speakersymb" text="Click or touch the speaker symbol (like this <i id=\"speaker_symbol_highlight\" class=\"fa fa-volume-off\" aria-hidden=\"true\"></i>) to have the question read out loud to you." substitutions=""}
                                </p>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a1_2_welcome_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_welcome" text="The first step to making a change to your health is knowing how you are doing. Your answers to these questions will help you and your healthcare team make a plan for better health." substitutions=""}
                        </p>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a1_4_nextstart_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_nextstart" text="Click next to get started."}
                        </p>
                    </section>

                    <section id="page2" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/filling-out-medical-forms/01.jpg">
                            </div>
                            <div>
                                <h4 class="h2 contains-audio">
                                    <span class="audio"><audio src="/audio/a2_1_heading_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_confidence_header" text="About You"}
                                </h4>
                                <p class="contains-audio special-size">
                                    <span class="audio"><audio src="/audio/a2_2_healthlit_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_confidence" text="How confident are you filling out medical forms by yourself?"}
                                </p>
                            </div>
                        </div>
                        <div class="nicer even-nicer even-nicer-5 push hug group">
                            <div>
                                <input id="form_confidence_0" name="form_confidence" value="0" type="radio" required>
                                <label id="form_confidence_0_highlight" for="form_confidence_0">{translate language=$language key="health_survey_confidence_0" text="Not at all confident"}</label>
                            </div>
                            <div>
                                <input id="form_confidence_1" name="form_confidence" value="1" type="radio" required>
                                <label id="form_confidence_1_highlight" for="form_confidence_1">{translate language=$language key="health_survey_confidence_1" text="A little bit"}</label>
                            </div>
                            <div>
                                <input id="form_confidence_2" name="form_confidence" value="2" type="radio" required>
                                <label id="form_confidence_2_highlight" for="form_confidence_2">{translate language=$language key="health_survey_confidence_2" text="Somewhat"}</label>
                            </div>
                            <div>
                                <input id="form_confidence_3" name="form_confidence" value="3" type="radio" required>
                                <label id="form_confidence_3_highlight" for="form_confidence_3">{translate language=$language key="health_survey_confidence_3" text="Quite a lot"}</label>
                            </div>
                            <div>
                                <input id="form_confidence_4" name="form_confidence" value="4" type="radio" required>
                                <label id="form_confidence_4_highlight" for="form_confidence_4">{translate language=$language key="health_survey_confidence_4" text="Extremely confident"}</label>
                            </label>
                        </div>
                    </section>

                    <section id="page3" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/your-weight/01.jpg">
                            </div>

                            <a class='height_updater {if !$user_height_feet OR !$user_height_inches} hidden_obj{/if}' href='#'>Update Height and Weight</a>

                            <div>
                                <h4 class="h2 contains-audio">
                                  <span class="audio"><audio src="/audio/a2_1_heading_{$language|upper}.mp3"></audio></span>
                                  {translate language=$language key="health_survey_height_weight_header" text="About You"}
                                </h4>
                                <p class="height_container contains-audio special-size {if $user_height_feet AND $user_height_inches} hidden_obj{/if}">
                                    <span class="audio"><audio src="/audio/a2_3_height_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_height" text="How tall are you? Enter your answer in feet and inches."}
                                </p>
                            </div>
                        </div>

                        <div class='height_container {if $user_height_feet AND $user_height_inches} hidden_obj{/if}'>
                            <p class="munch">
                                <span id="highlight_height_feet">{translate language=$language key="health_survey_foot_header" text="Feet:"}</span>
                            </p>
                            <div class="nicer even-nicer even-nicer-5 push group hug">
                                {for $foot_val=3 to 7}
                                    <div>
                                        <input id="foot_height_radio_{$foot_val}" name="user_feet_height" value="{$foot_val}" {if $foot_val eq $user_height_feet} checked="checked"{/if}  type="radio" required>
                                        <label id="highlight_height_radio_{$foot_val}" for="foot_height_radio_{$foot_val}">{translate language=$language key="health_survey_foot_height_radio_{$foot_val}" text="{$foot_val}"}</label>
                                    </div>
                                {/for}
                            </div>
                            <p class="munch">
                                <span id="highlight_height_inches">{translate language=$language key="health_survey_inch_header" text="Inches:"}</span>
                            </p>
                            <div class="nicer even-nicer even-nicer-8 push group hug">
                                {for $inch_val=0 to 11}
                                    <div>
                                        <input id="inch_height_radio_{$inch_val}" name="user_inch_height" value="{$inch_val}"   {if $inch_val eq $user_height_inches} checked="checked"{/if} type="radio" required>
                                        <label id="highlight_inch_height_radio_{$inch_val}" for="inch_height_radio_{$inch_val}">{translate language=$language key="health_survey_inch_height_radio_{$inch_val}" text="{$inch_val}"}</label>
                                    </div>
                                {/for}
                            </div>
                        </div>

                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a2_4_weight_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_weight_question" text="How much do you weigh?"}
                        </p>
                        <div class="push group">
                            <label class="sizer">
                                <span class="move">{translate language=$language key="health_survey_weight" text="Weight (in pounds):"}</span>
                                <input id="current_weight" class="inputer" name="current_weight" value="" type="number" min='1' max='1000' required>
                            </label>
                        </div>
                    </section>

                    <section id="page4" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/eating-habits/01.jpg">
                            </div>
                            <div>
                                <h4 class="h2 contains-audio">
                                    <span class="audio"><audio src="/audio/a3_1_heading_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_eating_header" text="Eating Habits over the past week"}
                                </h4>
                                <p class="contains-audio special-size">
                                    <span class="audio"><audio src="/audio/a3_2_vegetables_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_vegetables" text="How many servings of vegetables did you eat each day?"}
                                    <br>
                                    <i>{translate language=$language key="health_survey_serving" text="A serving is usually about <sup>1</sup>/<sub>2</sub> cup."}</i>
                                    <img class="iconic" src="/assets/images/size-half-cup.png">
                                </p>
                            </div>
                        </div>
                        <div class="nicer even-nicer even-nicer-8 push group hug">
                            <div>
                                <input id="vegetables_0" name="vegetable_servings" value="0" type="radio" required>
                                <label id="vegetables_0_highlight" for="vegetables_0">{translate language=$language key="health_survey_servings_0" text="0 servings"}</label>
                            </div>
                            <div>
                                <input id="vegetables_1" name="vegetable_servings" value="1" type="radio" required>
                                <label id="vegetables_1_highlight" for="vegetables_1">{translate language=$language key="health_survey_servings_1" text="1 serving"}</label>
                            </div>
                            <div>
                                <input id="vegetables_2" name="vegetable_servings" value="2" type="radio" required>
                                <label id="vegetables_2_highlight" for="vegetables_2">{translate language=$language key="health_survey_servings_2" text="2 servings"}</label>
                            </div>
                            <div>
                                <input id="vegetables_3" name="vegetable_servings" value="3" type="radio" required>
                                <label id="vegetables_3_highlight" for="vegetables_3">{translate language=$language key="health_survey_servings_3" text="3 servings"}</label>
                            </div>
                            <div>
                                <input id="vegetables_4" name="vegetable_servings" value="4" type="radio" required>
                                <label id="vegetables_4_highlight" for="vegetables_4">{translate language=$language key="health_survey_servings_4" text="4 servings"}</label>
                            </div>
                            <div>
                                <input id="vegetables_5" name="vegetable_servings" value="5" type="radio" required>
                                <label id="vegetables_5_highlight" for="vegetables_5">{translate language=$language key="health_survey_servings_5" text="5 servings"}</label>
                            </div>
                            <div>
                                <input id="vegetables_6" name="vegetable_servings" value="6" type="radio" required>
                                <label id="vegetables_6_highlight" for="vegetables_6">{translate language=$language key="health_survey_servings_6" text="6 servings"}</label>
                            </div>
                            <div>
                                <input id="vegetables_7" name="vegetable_servings" value="7" type="radio" required>
                                <label id="vegetables_7_highlight" for="vegetables_7">{translate language=$language key="health_survey_servings_7" text="7 or more servings"}</label>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a3_3_fruit_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_fruits" text="How many servings of fruits did you eat each day?"}
                            <br>
                            <i>{translate language=$language key="health_survey_serving" text="A serving is usually about <sup>1</sup>/<sub>2</sub> cup."}</i>
                            <img class="iconic" src="/assets/images/size-half-cup.png">
                        </p>
                        <div class="nicer even-nicer even-nicer-8 push group hug">
                            <div>
                                <input id="fruit_0" name="fruit_servings" value="0" type="radio" required>
                                <label id="fruit_0_highlight" for="fruit_0">{translate language=$language key="health_survey_servings_0" text="0 servings"}</label>
                            </div>
                            <div>
                                <input id="fruit_1" name="fruit_servings" value="1" type="radio" required>
                                <label id="fruit_1_highlight" for="fruit_1">{translate language=$language key="health_survey_servings_1" text="1 serving"}</label>
                            </div>
                            <div>
                                <input id="fruit_2" name="fruit_servings" value="2" type="radio" required>
                                <label id="fruit_2_highlight" for="fruit_2">{translate language=$language key="health_survey_servings_2" text="2 servings"}</label>
                            </div>
                            <div>
                                <input id="fruit_3" name="fruit_servings" value="3" type="radio" required>
                                <label id="fruit_3_highlight" for="fruit_3">{translate language=$language key="health_survey_servings_3" text="3 servings"}</label>
                            </div>
                            <div>
                                <input id="fruit_4" name="fruit_servings" value="4" type="radio" required>
                                <label id="fruit_4_highlight" for="fruit_4">{translate language=$language key="health_survey_servings_4" text="4 servings"}</label>
                            </div>
                            <div>
                                <input id="fruit_5" name="fruit_servings" value="5" type="radio" required>
                                <label id="fruit_5_highlight" for="fruit_5">{translate language=$language key="health_survey_servings_5" text="5 servings"}</label>
                            </div>
                            <div>
                                <input id="fruit_6" name="fruit_servings" value="6" type="radio" required>
                                <label id="fruit_6_highlight" for="fruit_6">{translate language=$language key="health_survey_servings_6" text="6 servings"}</label>
                            </div>
                            <div>
                                <input id="fruit_7" name="fruit_servings" value="7" type="radio" required>
                                <label id="fruit_7_highlight" for="fruit_7">{translate language=$language key="health_survey_servings_7" text="7 or more servings"}</label>
                            </div>
                        </div>
                    </section>

                    <section id="page5" class="step">
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a3_4_sugar_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_sugar" text="How many regular (not diet) 12-ounce sugar sweetened drinks did you drink each day?"}
                            </br>
                            <i>{translate language=$language key="health_survey_sugar_examples" text="Examples: soft  tea, sports drinks, sugar-sweetened coffee or tea, or other sweet drinks"}</i>
                        </p>
                        <div class="nicer even-nicer even-nicer-4 push group hug">
                            <div>
                                <input id="drinks_0" name="weekly_sugar_soda" value="0" type="radio" required>
                                <label id="drinks_0_highlight" for="drinks_0">{translate language=$language key="health_survey_sugar_0" text="No drinks"}</label>
                            </div>
                            <div>
                                <input id="drinks_1" name="weekly_sugar_soda" value="1" type="radio" required>
                                <label id="drinks_1_highlight" for="drinks_1">{translate language=$language key="health_survey_sugar_1" text="1 drink"}</label>
                            </div>
                            <div>
                                <input id="drinks_2" name="weekly_sugar_soda" value="2" type="radio" required>
                                <label id="drinks_2_highlight" for="drinks_2">{translate language=$language key="health_survey_sugar_2" text="2 drinks"}</label>
                            </div>
                            <div>
                                <input id="drinks_3" name="weekly_sugar_soda" value="3" type="radio" required>
                                <label id="drinks_3_highlight" for="drinks_3">{translate language=$language key="health_survey_sugar_3" text="3 or more drinks"}</label>
                            </div>
                        </div>
                    </section>

                    <section id="page6" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/eating-habits/02.jpg">
                            </div>
                            <div>
                                <p class="contains-audio special-size">
                                    <span class="audio"><audio src="/audio/a4_1_salt1_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_processed" text="How many days did you eat any canned, processed, or pickled foods (not low in sodium or low salt)? <i>Examples: canned soups, deli meats, bacon, hot dogs, frozen meals</i>"}
                                </p>
                            </div>
                        </div>
                        <div class="nicer even-nicer even-nicer-8 push group hug">
                            <div>
                                <input id="processed_0" name="processed_foods" value="0" type="radio" required>
                                <label id="processed_0_highlight" for="processed_0">{translate language=$language key="health_survey_days_0" text="0 days"}</label>
                            </div>
                            <div>
                                <input id="processed_1" name="processed_foods" value="1" type="radio" required>
                                <label id="processed_1_highlight" for="processed_1">{translate language=$language key="health_survey_days_1" text="1 day"}</label>
                            </div>
                            <div>
                                <input id="processed_2" name="processed_foods" value="2" type="radio" required>
                                <label id="processed_2_highlight" for="processed_2">{translate language=$language key="health_survey_days_2" text="2 days"}</label>
                            </div>
                            <div>
                                <input id="processed_3" name="processed_foods" value="3" type="radio" required>
                                <label id="processed_3_highlight" for="processed_3">{translate language=$language key="health_survey_days_3" text="3 days"}</label>
                            </div>
                            <div>
                                <input id="processed_4" name="processed_foods" value="4" type="radio" required>
                                <label id="processed_4_highlight" for="processed_4">{translate language=$language key="health_survey_days_4" text="4 days"}</label>
                            </div>
                            <div>
                                <input id="processed_5" name="processed_foods" value="5" type="radio" required>
                                <label id="processed_5_highlight" for="processed_5">{translate language=$language key="health_survey_days_5" text="5 days"}</label>
                            </div>
                            <div>
                                <input id="processed_6" name="processed_foods" value="6" type="radio" required>
                                <label id="processed_6_highlight" for="processed_6">{translate language=$language key="health_survey_days_6" text="6 days"}</label>
                            </div>
                            <div>
                                <input id="processed_7" name="processed_foods" value="7" type="radio" required>
                                <label id="processed_7_highlight" for="processed_7">{translate language=$language key="health_survey_days_7" text="7 days"}</label>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a4_2_salt2_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_salt" text="Did you usually add extra salt in cooking or at the table?"}
                        </p>
                        <div class="nicer even-nicer even-nicer-2 push group hug squash">
                            <div>
                                <input id="salt_0" name="salt" value="0" type="radio" required>
                                <label id="salt_0_highlight" for="salt_0">{translate language=$language key="health_survey_no" text="No"}</label>
                            </div>
                            <div>
                                <input id="salt_1" name="salt" value="1" type="radio" required>
                                <label id="salt_1_highlight" for="salt_1">{translate language=$language key="health_survey_yes" text="Yes"}</label>
                            </div>
                        </div>
                    </section>

                    <section id="page7" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/eating-habits/03.jpg">
                            </div>
                            <div>
                                <p class="contains-audio special-size">
                                    <span class="audio"><audio src="/audio/a4_3_fat1_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_fat" text="How many days did you eat any higher fat foods? <i>Examples: red meat, full-fat milk or cheese, fried foods, ice cream, etc.</i>"}
                                </p>
                            </div>
                        </div>
                        <div class="nicer even-nicer even-nicer-8 push group hug">
                            <div>
                                <input id="fat_0" name="fat_consumption" value="0" type="radio" required>
                                <label id="fat_0_highlight" for="fat_0">{translate language=$language key="health_survey_days_0" text="0 days"}</label>
                            </div>
                            <div>
                                <input id="fat_1" name="fat_consumption" value="1" type="radio" required>
                                <label id="fat_1_highlight" for="fat_1">{translate language=$language key="health_survey_days_1" text="1 day"}</label>
                            </div>
                            <div>
                                <input id="fat_2" name="fat_consumption" value="2" type="radio" required>
                                <label id="fat_2_highlight" for="fat_2">{translate language=$language key="health_survey_days_2" text="2 days"}</label>
                            </div>
                            <div>
                                <input id="fat_3" name="fat_consumption" value="3" type="radio" required>
                                <label id="fat_3_highlight" for="fat_3">{translate language=$language key="health_survey_days_3" text="3 days"}</label>
                            </div>
                            <div>
                                <input id="fat_4" name="fat_consumption" value="4" type="radio" required>
                                <label id="fat_4_highlight" for="fat_4">{translate language=$language key="health_survey_days_4" text="4 days"}</label>
                            </div>
                            <div>
                                <input id="fat_5" name="fat_consumption" value="5" type="radio" required>
                                <label id="fat_5_highlight" for="fat_5">{translate language=$language key="health_survey_days_5" text="5 days"}</label>
                            </div>
                            <div>
                                <input id="fat_6" name="fat_consumption" value="6" type="radio" required>
                                <label id="fat_6_highlight" for="fat_6">{translate language=$language key="health_survey_days_6" text="6 days"}</label>
                            </div>
                            <div>
                                <input id="fat_7" name="fat_consumption" value="7" type="radio" required>
                                <label id="fat_7_highlight" for="fat_7">{translate language=$language key="health_survey_days_7" text="7 days"}</label>
                            </div>
                        </div>
                        <div class="portion_size_container hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a4_4_fat2_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_portions" text="What size portions of higher fat foods did you usually have?"}
                            </p>
                            <div class="nicer even-nicer even-nicer-2 push group hug">
                                <div>
                                    <input id="size_0" name="portion_size" value="0" type="radio" required>
                                    <label id="size_0_highlight" for="size_0">{translate language=$language key="health_survey_portions_0" text="Small or medium"}</label>
                                </div>
                                <div>
                                    <input id="size_1" name="portion_size" value="1" type="radio" required>
                                    <label id="size_1_highlight" for="size_1">{translate language=$language key="health_survey_portions_1" text="Large or supersize"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="diet_rollup hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a5_1_eating_tier2_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_eating_better" text="A lot of people have days when they could be eating better. <i>What are some reasons that stopped you from eating better?</i>"}
                            </p>
                            <div class="nicer push group hug">
                                <div class="pure-g">
                                    <div class="pure-u-1 pure-u-md-1-2">
                                        <div>
                                            <input id="eating_better_0" name="eating_better" value="Hard to stop eating" type="checkbox" required>
                                            <label id="eating_better_0_highlight" for="eating_better_0">{translate language=$language key="health_survey_eating_better_0" text="Hard to stop eating"}</label>
                                        </div>
                                        <div>
                                            <input id="eating_better_1" name="eating_better" value="Someone else is making the food" type="checkbox" required>
                                            <label id="eating_better_1_highlight" for="eating_better_1">{translate language=$language key="health_survey_eating_better_1" text="Someone else is making the food"}</label>
                                        </div>
                                        <div>
                                            <input id="eating_better_2" name="eating_better" value="Hard to get healthier food" type="checkbox" required>
                                            <label id="eating_better_2_highlight" for="eating_better_2">{translate language=$language key="health_survey_eating_better_2" text="Hard to get healthier food"}</label>
                                        </div>
                                    </div>
                                    <div class="pure-u-1 pure-u-md-1-2">
                                        <div>
                                            <input id="eating_better_3" name="eating_better" value="Can't afford it" type="checkbox" required>
                                            <label id="eating_better_3_highlight" for="eating_better_3">{translate language=$language key="health_survey_eating_better_3" text="Can‘t afford it"}</label>
                                        </div>
                                        <div>
                                            <input id="eating_better_4" name="eating_better" value="I eat healthy enough already" type="checkbox" required>
                                            <label id="eating_better_4_highlight" for="eating_better_4">{translate language=$language key="health_survey_eating_better_4" text="I eat healthy enough already"}</label>
                                        </div>
                                        <div>
                                            <input id="eating_better_5" name="eating_better" value="None of these" type="checkbox" required>
                                            <label id="eating_better_5_highlight" for="eating_better_5">{translate language=$language key="health_survey_eating_better_5" text="None of these"}</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <section id="page8" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/physical-activity/01.jpg">
                            </div>
                            <div>
                                <h4 class="h2 contains-audio">
                                    <span class="audio"><audio src="/audio/a6_1_heading_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_physical_header" text="Physical Activity"}
                                </h4>
                                <p class="contains-audio special-size">
                                    <span class="audio"><audio src="/audio/a6_2_physical1_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_physical" text="Over the past week, how many days did you do moderate or heavy activities (like brisk walking, running, carrying loads, playing tennis, bicycling, swimming) for at least 10 minutes in a row?"}
                                </p>
                            </div>
                        </div>
                        <div class="nicer even-nicer even-nicer-8 push group hug">
                            <div>
                                <input id="weekly_exercise_days_exercise_days_0" name="weekly_exercise_days" value="0" type="radio" required>
                                <label id="weekly_exercise_days_exercise_days_0_highlight" for="weekly_exercise_days_exercise_days_0">{translate language=$language key="health_survey_days_0" text="0 days"}</label>
                            </div>
                            <div>
                                <input id="weekly_exercise_days_exercise_days_1" name="weekly_exercise_days" value="1" type="radio" required>
                                <label id="weekly_exercise_days_exercise_days_1_highlight" for="weekly_exercise_days_exercise_days_1">{translate language=$language key="health_survey_days_1" text="1 day"}</label>
                            </div>
                            <div>
                                <input id="weekly_exercise_days_exercise_days_2" name="weekly_exercise_days" value="2" type="radio" required>
                                <label id="weekly_exercise_days_exercise_days_2_highlight" for="weekly_exercise_days_exercise_days_2">{translate language=$language key="health_survey_days_2" text="2 days"}</label>
                            </div>
                            <div>
                                <input id="weekly_exercise_days_exercise_days_3" name="weekly_exercise_days" value="3" type="radio" required>
                                <label id="weekly_exercise_days_exercise_days_3_highlight" for="weekly_exercise_days_exercise_days_3">{translate language=$language key="health_survey_days_3" text="3 days"}</label>
                            </div>
                            <div>
                                <input id="weekly_exercise_days_exercise_days_4" name="weekly_exercise_days" value="4" type="radio" required>
                                <label id="weekly_exercise_days_exercise_days_4_highlight" for="weekly_exercise_days_exercise_days_4">{translate language=$language key="health_survey_days_4" text="4 days"}</label>
                            </div>
                            <div>
                                <input id="weekly_exercise_days_exercise_days_5" name="weekly_exercise_days" value="5" type="radio" required>
                                <label id="weekly_exercise_days_exercise_days_5_highlight" for="weekly_exercise_days_exercise_days_5">{translate language=$language key="health_survey_days_5" text="5 days"}</label>
                            </div>
                            <div>
                                <input id="weekly_exercise_days_exercise_days_6" name="weekly_exercise_days" value="6" type="radio" required>
                                <label id="weekly_exercise_days_exercise_days_6_highlight" for="weekly_exercise_days_exercise_days_6">{translate language=$language key="health_survey_days_6" text="6 days"}</label>
                            </div>
                            <div>
                                <input id="weekly_exercise_days_exercise_days_7" name="weekly_exercise_days" value="7" type="radio" required>
                                <label id="weekly_exercise_days_exercise_days_7_highlight" for="weekly_exercise_days_exercise_days_7">{translate language=$language key="health_survey_days_7" text="7 days"}</label>
                            </div>
                        </div>
                        <div class="exercise_duration hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a6_3_physical2_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_exercise" text="On the days that you did moderate or heavy activities <u>for at least 10 minutes in a row</u>, how much time did you usually spend doing them?"}
                            </p>
                            <div class="nicer even-nicer even-nicer-8 push group hug">
                                <div>
                                    <input id="exercise_duration_0" name="exercise_duration" value="0" required type="radio">
                                    <label id="exercise_duration_0_highlight" for="exercise_duration_0">{translate language=$language key="health_survey_exercise_0" text="Less than 15 minutes per day"}</label>
                                </div>
                                <div>
                                    <input id="exercise_duration_1" name="exercise_duration" value="15" required type="radio">
                                    <label id="exercise_duration_1_highlight" for="exercise_duration_1">{translate language=$language key="health_survey_exercise_1" text="15 minutes per day"}</label>
                                </div>
                                <div>
                                    <input id="exercise_duration_2" name="exercise_duration" value="30" required type="radio">
                                    <label id="exercise_duration_2_highlight" for="exercise_duration_2">{translate language=$language key="health_survey_exercise_2" text="30 minutes per day"}</label>
                                </div>
                                <div>
                                    <input id="exercise_duration_3" name="exercise_duration" value="45" required type="radio">
                                    <label id="exercise_duration_3_highlight" for="exercise_duration_3">{translate language=$language key="health_survey_exercise_3" text="45 minutes per day"}</label>
                                </div>
                                <div>
                                    <input id="exercise_duration_4" name="exercise_duration" value="60" required type="radio">
                                    <label id="exercise_duration_4_highlight" for="exercise_duration_4">{translate language=$language key="health_survey_exercise_4" text="60 minutes per day"}</label>
                                </div>
                                <div>
                                    <input id="exercise_duration_5" name="exercise_duration" value="90" required type="radio">
                                    <label id="exercise_duration_5_highlight" for="exercise_duration_5">{translate language=$language key="health_survey_exercise_5" text="90 minutes per day"}</label>
                                </div>
                                <div>
                                    <input id="exercise_duration_6" name="exercise_duration" value="120" required type="radio">
                                    <label id="exercise_duration_6_highlight" for="exercise_duration_6">{translate language=$language key="health_survey_exercise_6" text="120 minutes per day"}</label>
                                </div>
                                <div>
                                    <input id="exercise_duration_7" name="exercise_duration" value="150" required type="radio">
                                    <label id="exercise_duration_7_highlight" for="exercise_duration_7">{translate language=$language key="health_survey_exercise_7" text="150 minutes per day"}</label>
                                </div>
                            </div>
                       </div>
                        <div class="exercise_reasons hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a7_1_physical_tier2_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_active" text="People have many reasons for not being more physically active. Do any of the following apply to you? You can pick more than one."}
                            </p>
                            <div class="nicer push group hug">
                                <div class="pure-g">
                                    <div class="pure-u-1 pure-u-md-1-2">
                                          <div>
                                            <input id="exercise_reasons_0" name="exercise_reasons" value="Family and friends don't support me" required type="checkbox">
                                            <label id="exercise_reasons_0_highlight" for="exercise_reasons_0">{translate language=$language key="health_survey_active_0" text="Family and friends don't support me"}</label>
                                        </div>
                                             <div>
                                            <input id="exercise_reasons_3" name="exercise_reasons" value="Didn't feel safe" required type="checkbox">
                                            <label id="exercise_reasons_3_highlight" for="exercise_reasons_3">{translate language=$language key="health_survey_active_3" text="Didn't feel safe"}</label>
                                        </div>
                                        <div>
                                            <input id="exercise_reasons_4" name="exercise_reasons" value="I don't enjoy it" required type="checkbox">
                                            <label id="exercise_reasons_4_highlight" for="exercise_reasons_4">{translate language=$language key="health_survey_active_4" text="I don't enjoy it"}</label>
                                        </div>
                                        <div>
                                            <input id="exercise_reasons_1" name="exercise_reasons" value="Didn't have time" required type="checkbox">
                                            <label id="exercise_reasons_1_highlight" for="exercise_reasons_1">{translate language=$language key="health_survey_active_1" text="Didn't have time"}</label>
                                        </div>
                                    </div>
                                    <div class="pure-u-1 pure-u-md-1-2">
                                        <div>
                                            <input id="exercise_reasons_2" name="exercise_reasons" value="Physical limitations" required type="checkbox">
                                            <label id="exercise_reasons_2_highlight" for="exercise_reasons_2">{translate language=$language key="health_survey_active_2" text="Physical limitations"}</label>
                                        </div>
                                        <div>
                                            <input id="exercise_reasons_5" name="exercise_reasons" value="I don't have any concerns about my physical activity" required type="checkbox">
                                            <label id="exercise_reasons_5_highlight" for="exercise_reasons_5">{translate language=$language key="health_survey_active_5" text="I don't have any concerns about my physical activity"}</label>
                                        </div>
                                        <div>
                                            <input id="exercise_reasons_6" name="exercise_reasons" value="Some Other Reason" required type="checkbox">
                                            <label id="exercise_reasons_6_highlight" for="exercise_reasons_6">{translate language=$language key="health_survey_active_6" text="Some Other Reason"}</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <section id="page9" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/taking-your-medicines/01.jpg">
                            </div>
                            <div>
                                <h4 class="h2 contains-audio">
                                    <span class="audio"><audio src="/audio/a8_1_heading_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_medications_header" text="Medications"}
                                </h4>
                                <p class="contains-audio special-size">
                                    <span class="audio"><audio src="/audio/a8_2_medications_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_medications" text="People often have good reasons for not taking their prescribed medications. Over the past 14 days, on how many days did you miss taking one or more of your medications?"}
                                </p>
                            </div>
                        </div>
                        <p>{translate language=$language key="health_survey_missed_med_label" text="Move the slide bar below to show how many days."}</p>
                        <div class="slider">
                            <div class="slider-head">
                                <span class="missed_med_slider_value">0</span>
                                {translate language=$language key="health_survey_medications_slider" text="Day(s)"}
                            </div>
                            <div>
                                <span>0</span>
                                <input class="form_slider ranger" id="missed_med_slider" name="missed_med_days" type="range" min="0" max="14" value="0" step="1" data-page-rules="meds">
                                <span>14</span>
                                <!-- <div>
                                    <button class="missed_med_slider_control down">-</button>
                                    <button class="missed_med_slider_control up">+</button>
                                </div> -->
                            </div>
                        </div>
                        <p class="med_check med_quest_lead_in hidden_obj">
                            <span class="audio"><audio src="/audio/a9_1_medicationsmissedq_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_missed" text="When you did not take doses of your medication, was this because you …"}
                        <p>
                        <div class="med_check hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a9_2_forgot_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_forgot" text="Forgot or didn’t have time to take them"}
                            </p>
                            <div class="nicer even-nicer even-nicer-3 push group hug">
                                <div>
                                    <input id="prescription_adherence_0" name="prescription_adherence" value="0" type="radio" required>
                                    <label id="prescription_adherence_0_highlight" for="prescription_adherence_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                                </div>
                                <div>
                                    <input id="prescription_adherence_1" name="prescription_adherence" value="1" type="radio" required>
                                    <label id="prescription_adherence_1_highlight" for="prescription_adherence_1">{translate language=$language key="health_survey_sometimes" text="Sometimes"}</label>
                                </div>
                                <div>
                                    <input id="prescription_adherence_2" name="prescription_adherence" value="2" type="radio" required>
                                    <label id="prescription_adherence_2_highlight" for="prescription_adherence_2">{translate language=$language key="health_survey_often" text="Often"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="med_check hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a9_3_afford_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_afford" text="Couldn’t afford your medications"}
                            </p>
                            <div class="nicer even-nicer even-nicer-3 push group hug">
                                <div>
                                    <input id="afford_meds_0" name="afford_meds" value="0" type="radio" required>
                                    <label id="afford_meds_0_highlight" for="afford_meds_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                                </div>
                                <div>
                                    <input id="afford_meds_1" name="afford_meds" value="1" type="radio" required>
                                    <label id="afford_meds_1_highlight" for="afford_meds_1">{translate language=$language key="health_survey_sometimes" text="Sometimes"}</label>
                                </div>
                                <div>
                                    <input id="afford_meds_2" name="afford_meds" value="2" type="radio" required>
                                    <label id="afford_meds_2_highlight" for="afford_meds_2">{translate language=$language key="health_survey_often" text="Often"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="med_check hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a9_3_effects_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_concerned" text="Were concerned about side effects"}
                            </p>
                            <div class="nicer even-nicer even-nicer-3 push group hug">
                                <div>
                                    <input id="side_effects_0" name="side_effects" value="0" type="radio" required>
                                    <label id="side_effects_0_highlight" for="side_effects_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                                </div>
                                <div>
                                    <input id="side_effects_1" name="side_effects" value="1" type="radio" required>
                                    <label id="side_effects_1_highlight" for="side_effects_1">{translate language=$language key="health_survey_sometimes" text="Sometimes"}</label>
                                </div>
                                <div>
                                    <input id="side_effects_2" name="side_effects" value="2" type="radio" required>
                                    <label id="side_effects_2_highlight" for="side_effects_2">{translate language=$language key="health_survey_often" text="Often"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="med_check hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a9_4_nothelp_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_helping" text="Didn’t think the medication was helping"}
                            </p>
                            <div class="nicer even-nicer even-nicer-3 push group hug">
                                <div>
                                    <input id="meds_ineffective_0" name="meds_ineffective" value="0" type="radio" required>
                                    <label id="meds_ineffective_0_highlight" for="meds_ineffective_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                                </div>
                                <div>
                                    <input id="meds_ineffective_1" name="meds_ineffective" value="1" type="radio" required>
                                    <label id="meds_ineffective_1_highlight" for="meds_ineffective_1">{translate language=$language key="health_survey_sometimes" text="Sometimes"}</label>
                                </div>
                                <div>
                                    <input id="meds_ineffective_2" name="meds_ineffective" value="2" type="radio" required>
                                    <label id="meds_ineffective_2_highlight" for="meds_ineffective_2">{translate language=$language key="health_survey_often" text="Often"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="med_check hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a9_5_feltbetter_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_fine" text="Felt fine or better without the medication"}
                            </p>
                            <div class="nicer even-nicer even-nicer-3 push group hug">
                                <div>
                                    <input id="felt_better_0" name="felt_better" value="0" type="radio" required>
                                    <label id="felt_better_0_highlight" for="felt_better_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                                </div>
                                <div>
                                    <input id="felt_better_1" name="felt_better" value="1" type="radio" required>
                                    <label id="felt_better_1_highlight" for="felt_better_1">{translate language=$language key="health_survey_sometimes" text="Sometimes"}</label>
                                </div>
                                <div>
                                    <input id="felt_better_2" name="felt_better" value="2" type="radio" required>
                                    <label id="felt_better_2_highlight" for="felt_better_2">{translate language=$language key="health_survey_often" text="Often"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="med_check hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a9_6_couldntget_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_pharmacy" text="Couldn’t get the medication from the pharmacy"}
                            </p>
                            <div class="nicer even-nicer even-nicer-3 push group hug">
                                <div>
                                    <input id="couldnt_get_meds_0" name="couldnt_get_meds" value="0" type="radio" required>
                                    <label id="couldnt_get_meds_0_highlight" for="couldnt_get_meds_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                                </div>
                                <div>
                                    <input id="couldnt_get_meds_1" name="couldnt_get_meds" value="1" type="radio" required>
                                    <label id="couldnt_get_meds_1_highlight" for="couldnt_get_meds_1">{translate language=$language key="health_survey_sometimes" text="Sometimes"}</label>
                                </div>
                                <div>
                                    <input id="couldnt_get_meds_2" name="couldnt_get_meds" value="2" type="radio" required>
                                    <label id="couldnt_get_meds_2_highlight" for="couldnt_get_meds_2">{translate language=$language key="health_survey_often" text="Often"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="med_check hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a9_7_other_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_medication_other" text="Some other reason"}
                            </p>
                            <div class="nicer even-nicer even-nicer-3 push group hug">
                                <div>
                                    <input id="meds_other_reason_0" name="meds_other_reason" value="0" type="radio" required>
                                    <label id="meds_other_reason_0_highlight" for="meds_other_reason_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                                </div>
                                <div>
                                    <input id="meds_other_reason_1" name="meds_other_reason" value="1" type="radio" required>
                                    <label id="meds_other_reason_1_highlight" for="meds_other_reason_1">{translate language=$language key="health_survey_sometimes" text="Sometimes"}</label>
                                </div>
                                <div>
                                    <input id="meds_other_reason_2" name="meds_other_reason" value="2" type="radio" required>
                                    <label id="meds_other_reason_2_highlight" for="meds_other_reason_2">{translate language=$language key="health_survey_often" text="Often"}</label>
                                </div>
                            </div>
                        </div>
                    </section>

                    <section id="page10" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/drinking-alcohol/01.jpg">
                            </div>
                            <div>
                                <h4 class="h2 contains-audio">
                                    <span class="audio"><audio src="/audio/a10_1_heading_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_alcohol_header" text="Alcohol"}
                                </h4>
                                <p class="contains-audio special-size">
                                    <span class="audio"><audio src="/audio/a10_2_alcohol1_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_drinks" text="Think about a typical week. How many drinks with alcohol do you usually have? <i>Examples of standard alcoholic drinks include a 12-ounce beer, a 5-ounce glass of wine, or a 1.5-ounce shot of liquor.</i>"}
                                </p>
                            </div>
                        </div>
                        <p>{translate language=$language key="health_survey_drinks_label" text="Move the slider bar below to show how many drinks."}</p>
                        <div class="slider">
                            <div class="slider-head">
                                <span class='alcohol_slider_value'>0</span>
                                {translate language=$language key="health_survey_drinks_slider" text="Drink(s)"}
                            </div>
                            <div>
                                <span>0</span>
                                <input class='form_slider ranger' id="alcohol_slider" name='weekly_alcohol_units' type="range" min="0" max="21" value="0" step="1">
                                <span>14</span>
                                <!-- <div>
                                    <button class='alcohol_slider_control down'>-</button>
                                    <button class='alcohol_slider_control up'>+</button>
                                </div> -->
                            </div>
                        </div>
                        <div class="alcohol_tier2">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a10_3_alcohol2_{$user->gender|lower}_{$language|upper}.mp3"></audio></span>
                                {if $user_age <= 65 AND $user_obj->gender eq 'Male'}
                                    {translate language=$language key="health_survey_more_drinks_var_1" text="Over the past month, have you had more than 4 drinks with alcohol in any one day?"}
                                {else}
                                    {translate language=$language key="health_survey_more_drinks_var_2" text="Over the past month, have you had more than 3 drinks with alcohol in any one day?"}
                                {/if}
                            </p>
                            <div class="nicer even-nicer even-nicer-2 push group hug squash">
                                <div>
                                    <input id="3_drinks_day_0" name="3_drinks_day" value="0" type="radio" required>
                                    <label id="3_drinks_day_0_highlight" for="3_drinks_day_0">{translate language=$language key="health_survey_more_no" text="No"}</label>
                                </div>
                                <div>
                                    <input id="3_drinks_day_1" name="3_drinks_day" value="1" type="radio" required>
                                    <label id="3_drinks_day_1_highlight" for="3_drinks_day_1">{translate language=$language key="health_survey_more_yes" text="Yes"}</label>
                                </div>
                            </div>
                        </div>
                    </section>

                    <section id="page11" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/using-tobacco/01.jpg">
                            </div>
                            <div>
                                <h4 class="h2 contains-audio">
                                    <span class="audio"><audio src="/audio/a11_1_heading_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_tobacco_header" text="Tobacco"}
                                </h4>
                                <p class="contains-audio special-size">
                                    <span class="audio"><audio src="/audio/a11_2_tobacco1_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_tobacco" text="Do you currently smoke or use tobacco in any form?"}
                                </p>
                                <div class="nicer even-nicer even-nicer-2 push group hug squash">
                                    <div>
                                        <input id="tobacco_usage_0" name="tobacco_usage" value="0" type="radio" required>
                                        <label id="tobacco_usage_0_highlight" for="tobacco_usage_0">{translate language=$language key="health_survey_no" text="No"}</label>
                                    </div>
                                    <div>
                                        <input id="tobacco_usage_1" name="tobacco_usage" value="1" type="radio" required>
                                        <label id="tobacco_usage_1_highlight" for="tobacco_usage_1">{translate language=$language key="health_survey_yes" text="Yes"}</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="cigarette_t2 hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a11_3_tobacco2_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_smoked" text="Have you smoked a cigarette, even a puff, in the past week?"}
                            </p>
                            <div class="nicer even-nicer even-nicer-2 push group hug squash">
                                <div>
                                    <input id="cigarette_usage_0" name="cigarette_usage" value="0" type="radio" required>
                                    <label id="cigarette_usage_0_highlight" for="cigarette_usage_0">{translate language=$language key="health_survey_no" text="No"}</label>
                                </div>
                                <div>
                                    <input id="cigarette_usage_1" name="cigarette_usage" value="1" type="radio" required>
                                    <label id="cigarette_usage_1_highlight" for="cigarette_usage_1">{translate language=$language key="health_survey_yes" text="Yes"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="tobacco_t2 hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a11_4_tobacco3_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_cigarette" text="How many cigarettes do you smoke in a usual day?"}
                            </p>
                            <div class="push group hug">
                                <div>
                                    <label class="sizer">
                                        {translate language=$language key="health_survey_cigarette_entry" text="Cigarettes a day:"}
                                        <br>
                                        <input id="cigarettes_per_day" class="inputer" name="cigarettes_per_day" value="" type="number" min='0' max='100' required>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="tobacco_t2 hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a11_5_tobacco4_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_pipe_cigar" text="Have you smoked a pipe or a cigar in the past week?"}
                            </p>
                            <div class="nicer even-nicer even-nicer-2 push group hug squash">
                                <div>
                                    <input id="pipe_cigar_0" name="pipe_cigar" value="0" type="radio" required>
                                    <label id="pipe_cigar_0_highlight" for="pipe_cigar_0">{translate language=$language key="health_survey_pipe_no" text="No"}</label>
                                </div>
                                <div>
                                    <input id="pipe_cigar_1" name="pipe_cigar" value="1" type="radio" required>
                                    <label id="pipe_cigar_1_highlight" for="pipe_cigar_1">{translate language=$language key="health_survey_pipe_yes" text="Yes"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="pipe_t2 hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a11_6_tobacco5_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_pipe_day" text="How many times do you smoke a pipe or cigar in a usual day?"}
                            </p>
                            <div class="pipe_t2 push group hug">
                                <div>
                                    <label class="sizer">
                                        {translate language=$language key="health_survey_pipe_day_entry" text="Pipes or cigars a day:"}
                                        <br>
                                        <input id="pipe_cigar_frequency" class="inputer" name="pipe_cigar_frequency" type="number" min='0' max='100' required>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="tobacco_t2 hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a11_7_tobacco5_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_smokeless" text="Have you used smokeless tobacco, such as chewing tobacco or snuff, in the past week?"}
                            </p>
                            <div class="nicer even-nicer even-nicer-2 push group hug squash">
                                <div>
                                    <input id="smokeless_tobacco_0" name="smokeless_tobacco" value="0" type="radio" required>
                                    <label id="smokeless_tobacco_0_highlight" for="smokeless_tobacco_0">{translate language=$language key="health_survey_no" text="No"}</label>
                                </div>
                                <div>
                                    <input id="smokeless_tobacco_1" name="smokeless_tobacco" value="1" type="radio" required>
                                    <label id="smokeless_tobacco_1_highlight" for="smokeless_tobacco_1">{translate language=$language key="health_survey_yes" text="Yes"}</label>
                                </div>
                            </div>
                        </div>
                    </section>

                    <section id="page12" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/living-with-health-problems/01.jpg">
                            </div>
                            <div>
                                <h4 class="h2 contains-audio">
                                    <span class="audio"><audio src="/audio/a12_1_heading_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_issues_header" text="Stress About health problems"}
                                </h4>
                                <p class="contains-audio special-size">
                                    <span class="audio"><audio src="/audio/a12_2_intro_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_ongoing" text="Think about all of your ongoing health issues (for example, diabetes, asthma, cancer, or chronic pain). How much of a problem have the following been for you over the <u>past month</u>?"}
                                </p>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a12_3_distress1_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_overwhelmed" text="Feeling overwhelmed by my health issues"}
                        </p>
                        <div class="nicer even-nicer even-nicer-5 push group hug">
                            <div>
                                <input id="overwhelmed_health_0" name="overwhelmed_health" value="1" type="radio" required>
                                <label id="overwhelmed_health_0_highlight" for="overwhelmed_health_0">{translate language=$language key="health_survey_no_problem" text="Not a problem"}</label>
                            </div>
                            <div>
                                <input id="overwhelmed_health_1" name="overwhelmed_health" value="2" type="radio" required>
                                <label id="overwhelmed_health_1_highlight" for="overwhelmed_health_1">{translate language=$language key="health_survey_slight" text="A slight problem"}</label>
                            </div>
                            <div>
                                <input id="overwhelmed_health_2" name="overwhelmed_health" value="3" type="radio" required>
                                <label id="overwhelmed_health_2_highlight" for="overwhelmed_health_2">{translate language=$language key="health_survey_moderate" text="A moderate problem"}</label>
                            </div>
                            <div>
                                <input id="overwhelmed_health_3" name="overwhelmed_health" value="4" type="radio" required>
                                <label id="overwhelmed_health_3_highlight" for="overwhelmed_health_3">{translate language=$language key="health_survey_serious" text="A serious problem"}</label>
                            </div>
                            <div>
                                <input id="overwhelmed_health_4" name="overwhelmed_health" value="5" type="radio" required>
                                <label id="overwhelmed_health_4_highlight" for="overwhelmed_health_4">{translate language=$language key="health_survey_very_serious" text="A very serious problem"}</label>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a12_4_distress2_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_not_doing" text="Feeling that I’m not doing what I should be doing to manage my health issues"}
                        </p>
                        <div class="nicer even-nicer even-nicer-5 push group hug">
                            <div>
                                <input id="health_management_0" name="health_management" value="1" type="radio" required>
                                <label id="health_management_0_highlight" for="health_management_0">{translate language=$language key="health_survey_no_problem" text="Not a problem"}</label>
                            </div>
                            <div>
                                <input id="health_management_1" name="health_management" value="2" type="radio" required>
                                <label id="health_management_1_highlight" for="health_management_1">{translate language=$language key="health_survey_slight" text="A slight problem"}</label>
                            </div>
                            <div>
                                <input id="health_management_2" name="health_management" value="3" type="radio" required>
                                <label id="health_management_2_highlight" for="health_management_2">{translate language=$language key="health_survey_moderate" text="A moderate problem"}</label>
                            </div>
                            <div>
                                <input id="health_management_3" name="health_management" value="4" type="radio" required>
                                <label id="health_management_3_highlight" for="health_management_3">{translate language=$language key="health_survey_serious" text="A serious problem"}</label>
                            </div>
                            <div>
                                <input id="health_management_4" name="health_management" value="5" type="radio" required>
                                <label id="health_management_4_highlight" for="health_management_4">{translate language=$language key="health_survey_very_serious" text="A very serious problem"}</label>
                            </div>
                        </div>
                        <div class="health_stressors hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a13_1_distress_tier2_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_stressful" text="What is stressful for you about your health issues? <i>You can pick more than one</i>"}
                            </p>
                            <div class="nicer push group hug">
                                <div class="pure-g">
                                    <div class="pure-u-1 pure-u-md-1-2">
                                        <div>
                                            <input id="health_stress_0" name="health_stress" value="Not enough support from family or friends" type="checkbox" required>
                                            <label id="health_stress_0_highlight" for="health_stress_0">{translate language=$language key="health_survey_stressful_0" text="Not enough support from family or friends"}</label>
                                        </div>
                                        <div>
                                            <input id="health_stress_1" name="health_stress" value="Trouble getting healthcare or medications" type="checkbox" required>
                                            <label id="health_stress_1_highlight" for="health_stress_1">{translate language=$language key="health_survey_stressful_1" text="Trouble getting healthcare or medications"}</label>
                                        </div>
                                        <div>
                                            <input id="health_stress_2" name="health_stress" value="Not not time or energy" type="checkbox" required>
                                            <label id="health_stress_2_highlight" for="health_stress_2">{translate language=$language key="health_survey_stressful_2" text="Not not time or energy"}</label>
                                        </div>
                                    </div>
                                    <div class="pure-u-1 pure-u-md-1-2">
                                        <div>
                                            <input id="health_stress_3" name="health_stress" value="Not sure how to manage my health" type="checkbox" required>
                                            <label id="health_stress_3_highlight" for="health_stress_3">{translate language=$language key="health_survey_stressful_3" text="Not sure how to manage my health"}</label>
                                        </div>
                                        <div>
                                            <input id="health_stress_4" name="health_stress" value="None of these" type="checkbox" required>
                                            <label id="health_stress_4_highlight" for="health_stress_4">{translate language=$language key="health_survey_stressful_4" text="None of these"}</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <section id="page13" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/living-with-health-problems/01.jpg">
                            </div>
                            <div>
                                <h4 class="h2 contains-audio">
                                    <span class="audio"><audio src="/audio/a14_1_heading_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_current_header" text="Your Current health problems"}
                                </h4>
                                <p class="contains-audio special-size">
                                    <span class="audio"><audio src="/audio/a14_2_TANintro_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_current" text="Thinking about your ongoing health problems (for example, diabetes, asthma, cancer, or chronic pain), how much do you agree or disagree with the following statements?"}
                                </p>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a14_3_TAN1_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_better" text="I want to find a better way to take care of my health problems."}
                        </p>
                        <div class="nicer even-nicer even-nicer-5 push group hug">
                            <div>
                                <input id="find_better_way_0" name="find_better_way" value="1" type="radio" required>
                                <label id="find_better_way_0_highlight" for="find_better_way_0">{translate language=$language key="health_survey_strong_dis" text="I strongly disagree"}</label>
                            </div>
                            <div>
                                <input id="find_better_way_1" name="find_better_way" value="2" type="radio" required>
                                <label id="find_better_way_1_highlight" for="find_better_way_1">{translate language=$language key="health_survey_disagree" text="I disagree"}</label>
                            </div>
                            <div>
                                <input id="find_better_way_2" name="find_better_way" value="3" type="radio" required>
                                <label id="find_better_way_2_highlight" for="find_better_way_2">{translate language=$language key="health_survey_neither" text="I neither agree nor disagree"}</label>
                            </div>
                            <div>
                                <input id="find_better_way_3" name="find_better_way" value="4" type="radio" required>
                                <label id="find_better_way_3_highlight" for="find_better_way_3">{translate language=$language key="health_survey_agree" text="I agree"}</label>
                            </div>
                            <div>
                                <input id="find_better_way_4" name="find_better_way" value="5" type="radio" required>
                                <label id="find_better_way_4_highlight" for="find_better_way_4">{translate language=$language key="health_survey_strong_agree" text="I strongly agree"}</label>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a14_4_TAN2_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_time" text="I don’t have time to take care of my health problems the way I think I should"}
                        </p>
                        <div class="nicer even-nicer even-nicer-5 push group hug">
                            <div>
                                <input id="health_no_time_0" name="health_no_time" value="1" type="radio" required>
                                <label id="health_no_time_0_highlight" for="health_no_time_0">{translate language=$language key="health_survey_strong_dis" text="I strongly disagree"}</label>
                            </div>
                            <div>
                                <input id="health_no_time_1" name="health_no_time" value="2" type="radio" required>
                                <label id="health_no_time_1_highlight" for="health_no_time_1">{translate language=$language key="health_survey_disagree" text="I disagree"}</label>
                            </div>
                            <div>
                                <input id="health_no_time_2" name="health_no_time" value="3" type="radio" required>
                                <label id="health_no_time_2_highlight" for="health_no_time_2">{translate language=$language key="health_survey_neither" text="I neither agree nor disagree"}</label>
                            </div>
                            <div>
                                <input id="health_no_time_3" name="health_no_time" value="4" type="radio" required>
                                <label id="health_no_time_3_highlight" for="health_no_time_3">{translate language=$language key="health_survey_agree" text="I agree"}</label>
                            </div>
                            <div>
                                <input id="health_no_time_4" name="health_no_time" value="5" type="radio" required>
                                <label id="health_no_time_4_highlight" for="health_no_time_4">{translate language=$language key="health_survey_strong_agree" text="I strongly agree"}</label>
                            </div>
                        </div>
                    </section>

                    <section id="page14" class="step">
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a14_5_TAN3_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_benefits" text="I see few benefits to putting time and energy into managing my health problems now"}
                        </p>
                        <div class="nicer even-nicer even-nicer-5 push group hug">
                            <div>
                                <input id="few_benefits_0" name="few_benefits" value="1" type="radio" required>
                                <label id="few_benefits_0_highlight" for="few_benefits_0">{translate language=$language key="health_survey_strong_dis" text="I strongly disagree"}</label>
                            </div>
                            <div>
                                <input id="few_benefits_1" name="few_benefits" value="2" type="radio" required>
                                <label id="few_benefits_1_highlight" for="few_benefits_1">{translate language=$language key="health_survey_disagree" text="I disagree"}</label>
                            </div>
                            <div>
                                <input id="few_benefits_2" name="few_benefits" value="3" type="radio" required>
                                <label id="few_benefits_2_highlight" for="few_benefits_2">{translate language=$language key="health_survey_neither" text="I neither agree nor disagree"}</label>
                            </div>
                            <div>
                                <input id="few_benefits_3" name="few_benefits" value="4" type="radio" required>
                                <label id="few_benefits_3_highlight" for="few_benefits_3">{translate language=$language key="health_survey_agree" text="I agree"}</label>
                            </div>
                            <div>
                                <input id="few_benefits_4" name="few_benefits" value="5" type="radio" required>
                                <label id="few_benefits_4_highlight" for="few_benefits_4">{translate language=$language key="health_survey_strong_agree" text="I strongly agree"}</label>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a14_6_TAN4_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_more" text="I want to find a better way to take care of my health problems."}
                        </p>
                        <div class="nicer even-nicer even-nicer-5 push group hug">
                            <div>
                                <input id="health_do_more_0" name="health_do_more" value="1" type="radio" required>
                                <label id="health_do_more_0_highlight" for="health_do_more_0">{translate language=$language key="health_survey_more_0" text="I strongly disagree"}</label>
                            </div>
                            <div>
                                <input id="health_do_more_1" name="health_do_more" value="2" type="radio" required>
                                <label id="health_do_more_1_highlight" for="health_do_more_1">{translate language=$language key="health_survey_more_1" text="I disagree"}</label>
                            </div>
                            <div>
                                <input id="health_do_more_2" name="health_do_more" value="3" type="radio" required>
                                <label id="health_do_more_2_highlight" for="health_do_more_2">{translate language=$language key="health_survey_more_2" text="I neither agree nor disagree"}</label>
                            </div>
                            <div>
                                <input id="health_do_more_3" name="health_do_more" value="4" type="radio" required>
                                <label id="health_do_more_3_highlight" for="health_do_more_3">{translate language=$language key="health_survey_more_3" text="I agree"}</label>
                            </div>
                            <div>
                                <input id="health_do_more_4" name="health_do_more" value="5" type="radio" required>
                                <label id="health_do_more_4_highlight" for="health_do_more_4">{translate language=$language key="health_survey_more_4" text="I strongly agree"}</label>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a14_7_TAN5_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_demands" text="I am able to fit the demands of managing my health problems into my life."}
                        </p>
                        <div class="nicer even-nicer even-nicer-5 push group hug">
                            <div>
                                <input id="health_demands_0" name="health_demands" value="1" type="radio" required>
                                <label id="health_demands_0_highlight" for="health_demands_0">{translate language=$language key="health_survey_demands_0" text="I strongly disagree"}</label>
                            </div>
                            <div>
                                <input id="health_demands_1" name="health_demands" value="2" type="radio" required>
                                <label id="health_demands_1_highlight" for="health_demands_1">{translate language=$language key="health_survey_demands_1" text="I disagree"}</label>
                            </div>
                            <div>
                                <input id="health_demands_2" name="health_demands" value="3" type="radio" required>
                                <label id="health_demands_2_highlight" for="health_demands_2">{translate language=$language key="health_survey_demands_2" text="I neither agree nor disagree"}</label>
                            </div>
                            <div>
                                <input id="health_demands_3" name="health_demands" value="4" type="radio" required>
                                <label id="health_demands_3_highlight" for="health_demands_3">{translate language=$language key="health_survey_demands_3" text="I agree"}</label>
                            </div>
                            <div>
                                <input id="health_demands_4" name="health_demands" value="5" type="radio" required>
                                <label id="health_demands_4_highlight" for="health_demands_4">{translate language=$language key="health_survey_demands_4" text="I strongly agree"}</label>
                            </div>
                        </div>
                    </section>

                    <section id="page15" class="step">
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a14_8_TAN6_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_payoff" text="Working to manage my health problems has little payoff or benefit."}
                        </p>
                        <div class="nicer even-nicer even-nicer-5 push group hug">
                            <div>
                                <input id="little_benefit_0" name="little_benefit" value="1" type="radio" required>
                                <label id="little_benefit_0_highlight" for="little_benefit_0">{translate language=$language key="health_survey_payoff_0" text="I strongly disagree"}</label>
                            </div>
                            <div>
                                <input id="little_benefit_1" name="little_benefit" value="2" type="radio" required>
                                <label id="little_benefit_1_highlight" for="little_benefit_1">{translate language=$language key="health_survey_payoff_1" text="I disagree"}</label>
                            </div>
                            <div>
                                <input id="little_benefit_2" name="little_benefit" value="3" type="radio" required>
                                <label id="little_benefit_2_highlight" for="little_benefit_2">{translate language=$language key="health_survey_payoff_2" text="I neither agree nor disagree"}</label>
                            </div>
                            <div>
                                <input id="little_benefit_3" name="little_benefit" value="4" type="radio" required>
                                <label id="little_benefit_3_highlight" for="little_benefit_3">{translate language=$language key="health_survey_payoff_3" text="I agree"}</label>
                            </div>
                            <div>
                                <input id="little_benefit_4" name="little_benefit" value="5" type="radio" required>
                                <label id="little_benefit_4_highlight" for="little_benefit_4">{translate language=$language key="health_survey_payoff_4" text="I strongly agree"}</label>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a14_9_TAN7_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_new" text="I am interested in finding new ways to better manage my health problems."}
                        </p>
                        <div class="nicer even-nicer even-nicer-5 push group hug">
                            <div>
                                <input id="new_ways_0" name="new_ways" value="1" type="radio" required>
                                <label id="new_ways_0_highlight" for="new_ways_0">{translate language=$language key="health_survey_new_0" text="I strongly disagree"}</label>
                            </div>
                            <div>
                                <input id="new_ways_1" name="new_ways" value="2" type="radio" required>
                                <label id="new_ways_1_highlight" for="new_ways_1">{translate language=$language key="health_survey_new_1" text="I disagree"}</label>
                            </div>
                            <div>
                                <input id="new_ways_2" name="new_ways" value="3" type="radio" required>
                                <label id="new_ways_2_highlight" for="new_ways_2">{translate language=$language key="health_survey_new_2" text="I neither agree nor disagree"}</label>
                            </div>
                            <div>
                                <input id="new_ways_3" name="new_ways" value="4" type="radio" required>
                                <label id="new_ways_3_highlight" for="new_ways_3">{translate language=$language key="health_survey_new_3" text="I agree"}</label>
                            </div>
                            <div>
                                <input id="new_ways_4" name="new_ways" value="5" type="radio" required>
                                <label id="new_ways_4_highlight" for="new_ways_4">{translate language=$language key="health_survey_new_4" text="I strongly agree"}</label>
                            </div>
                        </div>
                    </section>

                    <section id="page16" class="step">
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a14_10_TAN8_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_worth_it" text="It is not really worth it to do all the things that I am told to do to manage my health problems."}
                        </p>
                        <div class="nicer even-nicer even-nicer-5 push group hug">
                            <div>
                                <input id="not_worth_it_0" name="not_worth_it" value="1" type="radio" required>
                                <label id="not_worth_it_0_highlight" for="not_worth_it_0">{translate language=$language key="health_survey_worth_it_0" text="I strongly disagree"}</label>
                            </div>
                            <div>
                                <input id="not_worth_it_1" name="not_worth_it" value="2" type="radio" required>
                                <label id="not_worth_it_1_highlight" for="not_worth_it_1">{translate language=$language key="health_survey_worth_it_1" text="I disagree"}</label>
                            </div>
                            <div>
                                <input id="not_worth_it_2" name="not_worth_it" value="3" type="radio" required>
                                <label id="not_worth_it_2_highlight" for="not_worth_it_2">{translate language=$language key="health_survey_worth_it_2" text="I neither agree nor disagree"}</label>
                            </div>
                            <div>
                                <input id="not_worth_it_3" name="not_worth_it" value="4" type="radio" required>
                                <label id="not_worth_it_3_highlight" for="not_worth_it_3">{translate language=$language key="health_survey_worth_it_3" text="I agree"}</label>
                            </div>
                            <div>
                                <input id="not_worth_it_4" name="not_worth_it" value="5" type="radio" required>
                                <label id="not_worth_it_4_highlight" for="not_worth_it_4">{translate language=$language key="health_survey_worth_it_4" text="I strongly agree"}</label>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a14_11_TAN9_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_changes" text="I am able to make the health-related changes in my life that are needed."}
                        </p>
                        <div class="nicer even-nicer even-nicer-5 push group hug">
                            <div>
                                <input id="health_changes_0" name="health_changes" value="1" type="radio" required>
                                <label id="health_changes_0_highlight" for="health_changes_0">{translate language=$language key="health_survey_strong_dis" text="I strongly disagree"}</label>
                            </div>
                            <div>
                                <input id="health_changes_1" name="health_changes" value="2" type="radio" required>
                                <label id="health_changes_1_highlight" for="health_changes_1">{translate language=$language key="health_survey_disagree" text="I disagree"}</label>
                            </div>
                            <div>
                                <input id="health_changes_2" name="health_changes" value="3" type="radio" required>
                                <label id="health_changes_2_highlight" for="health_changes_2">{translate language=$language key="health_survey_neither" text="I neither agree nor disagree"}</label>
                            </div>
                            <div>
                                <input id="health_changes_3" name="health_changes" value="4" type="radio" required>
                                <label id="health_changes_3_highlight" for="health_changes_3">{translate language=$language key="health_survey_agree" text="I agree"}</label>
                            </div>
                            <div>
                                <input id="health_changes_4" name="health_changes" value="5" type="radio" required>
                                <label id="health_changes_4_highlight" for="health_changes_4">{translate language=$language key="health_survey_strong_agree" text="I strongly agree"}</label>
                            </div>
                        </div>
                    </section>

                    <section id="page17" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/depression-symptoms/01.jpg">
                            </div>
                            <div>
                                <h4 class="h2 contains-audio">
                                    <span class="audio"><audio src="/audio/a15_1_heading_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_problems_header" text="Depression Symptoms"}
                                </h4>
                                <p class="contains-audio special-size">
                                    <span class="audio"><audio src="/audio/a15_2_PHQintro_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_problems" text="In the past two weeks, how often have you been bothered by any of the following problems?"}
                                </p>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a15_3_PHQ1_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_adhedonia" text="Little interest or pleasure in doing things"}
                        </p>
                        <div class="nicer even-nicer even-nicer-4 push group hug">
                            <div>
                                <input id="adhedonia_0" name="adhedonia" value="0" type="radio" required>
                                <label id="adhedonia_0_highlight" for="adhedonia_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                            </div>
                            <div>
                                <input id="adhedonia_1" name="adhedonia" value="1" type="radio" required>
                                <label id="adhedonia_1_highlight" for="adhedonia_1">{translate language=$language key="health_survey_several" text="Several days"}</label>
                            </div>
                            <div>
                                <input id="adhedonia_2" name="adhedonia" value="2" type="radio" required>
                                <label id="adhedonia_2_highlight" for="adhedonia_2">{translate language=$language key="health_survey_half" text="Half the days"}</label>
                            </div>
                            <div>
                                <input id="adhedonia_3" name="adhedonia" value="3" type="radio" required>
                                <label id="adhedonia_3_highlight" for="adhedonia_3">{translate language=$language key="health_survey_every" text="Nearly every day"}</label>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a15_4_PHQ2_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_hopeless" text="Feeling down, depressed, or hopeless"}
                        </p>
                        <div class="nicer even-nicer even-nicer-4 push group hug">
                            <div>
                                <input id="feeling_hopeless_0" name="feeling_hopeless" value="0" type="radio" required>
                                <label id="feeling_hopeless_0_highlight" for="feeling_hopeless_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                            </div>
                            <div>
                                <input id="feeling_hopeless_1" name="feeling_hopeless" value="1" type="radio" required>
                                <label id="feeling_hopeless_1_highlight" for="feeling_hopeless_1">{translate language=$language key="health_survey_several" text="Several days"}</label>
                            </div>
                            <div>
                                <input id="feeling_hopeless_2" name="feeling_hopeless" value="2" type="radio" required>
                                <label id="feeling_hopeless_2_highlight" for="feeling_hopeless_2">{translate language=$language key="health_survey_half" text="Half the days"}</label>
                            </div>
                            <div>
                                <input id="feeling_hopeless_3" name="feeling_hopeless" value="3" type="radio" required>
                                <label id="feeling_hopeless_3_highlight" for="feeling_hopeless_3">{translate language=$language key="health_survey_every" text="Nearly every day"}</label>
                            </div>
                        </div>
                        <div class="depression_check hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a15_5_PHQ3_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_sleep" text="Trouble falling/staying asleep or sleeping too much"}
                            </p>
                            <div class="nicer even-nicer even-nicer-4 push group hug">
                                <div>
                                    <input id="sleep_disturbance_0" name="sleep_disturbance" value="0" type="radio" required>
                                    <label id="sleep_disturbance_0_highlight" for="sleep_disturbance_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                                </div>
                                <div>
                                    <input id="sleep_disturbance_1" name="sleep_disturbance" value="1" type="radio" required>
                                    <label id="sleep_disturbance_1_highlight" for="sleep_disturbance_1">{translate language=$language key="health_survey_several" text="Several days"}</label>
                                </div>
                                <div>
                                    <input id="sleep_disturbance_2" name="sleep_disturbance" value="2" type="radio" required>
                                    <label id="sleep_disturbance_2_highlight" for="sleep_disturbance_2">{translate language=$language key="health_survey_half" text="Half the days"}</label>
                                </div>
                                <div>
                                    <input id="sleep_disturbance_3" name="sleep_disturbance" value="3" type="radio" required>
                                    <label id="sleep_disturbance_3_highlight" for="sleep_disturbance_3">{translate language=$language key="health_survey_every" text="Nearly every day"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="depression_check hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a15_6_PHQ4_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_tired" text="Feeling tired or having little energy"}
                            </p>
                            <div class="nicer even-nicer even-nicer-4 push group hug">
                                <div>
                                    <input id="lethargy_0" name="lethargy" value="0" type="radio" required>
                                    <label id="lethargy_0_highlight" for="lethargy_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                                </div>
                                <div>
                                    <input id="lethargy_1" name="lethargy" value="1" type="radio" required>
                                    <label id="lethargy_1_highlight" for="lethargy_1">{translate language=$language key="health_survey_several" text="Several days"}</label>
                                </div>
                                <div>
                                    <input id="lethargy_2" name="lethargy" value="2" type="radio" required>
                                    <label id="lethargy_2_highlight" for="lethargy_2">{translate language=$language key="health_survey_half" text="Half the days"}</label>
                                </div>
                                <div>
                                    <input id="lethargy_3" name="lethargy" value="3" type="radio" required>
                                    <label id="lethargy_3_highlight" for="lethargy_3">{translate language=$language key="health_survey_every" text="Nearly every day"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="depression_check hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a15_7_PHQ5_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_eating" text="Poor appetite or overeating"}
                            </p>
                            <div class="nicer even-nicer even-nicer-4 push group hug">
                                <div>
                                    <input id="appetite_disturbance_0" name="appetite_disturbance" value="0" type="radio" required>
                                    <label id="appetite_disturbance_0_highlight" for="appetite_disturbance_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                                </div>
                                <div>
                                    <input id="appetite_disturbance_1" name="appetite_disturbance" value="1" type="radio" required>
                                    <label id="appetite_disturbance_1_highlight"for="appetite_disturbance_1">{translate language=$language key="health_survey_several" text="Several days"}</label>
                                </div>
                                <div>
                                    <input id="appetite_disturbance_2" name="appetite_disturbance" value="2" type="radio" required>
                                    <label id="appetite_disturbance_2_highlight"for="appetite_disturbance_2">{translate language=$language key="health_survey_half" text="Half the days"}</label>
                                </div>
                                <div>
                                    <input id="appetite_disturbance_3" name="appetite_disturbance" value="3" type="radio" required>
                                    <label id="appetite_disturbance_3_highlight"for="appetite_disturbance_3">{translate language=$language key="health_survey_every" text="Nearly every day"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="depression_check hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a15_8_PHQ6_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_failure" text="Feeling bad about yourself, or that you are a failure or have let yourself or your family down"}
                            </p>
                            <div class="nicer even-nicer even-nicer-4 push group hug">
                                <div>
                                    <input id="failure_feelings_0" name="failure_feelings" value="0" type="radio" required>
                                    <label id="failure_feelings_0_highlight" for="failure_feelings_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                                </div>
                                <div>
                                    <input id="failure_feelings_1" name="failure_feelings" value="1" type="radio" required>
                                    <label id="failure_feelings_1_highlight" for="failure_feelings_1">{translate language=$language key="health_survey_several" text="Several days"}</label>
                                </div>
                                <div>
                                    <input id="failure_feelings_2" name="failure_feelings" value="2" type="radio" required>
                                    <label id="failure_feelings_2_highlight" for="failure_feelings_2">{translate language=$language key="health_survey_half" text="Half the days"}</label>
                                </div>
                                <div>
                                    <input id="failure_feelings_3"  name="failure_feelings" value="3" type="radio" required>
                                    <label id="failure_feelings_3_highlight" for="failure_feelings_3">{translate language=$language key="health_survey_every" text="Nearly every day"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="depression_check hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a15_9_PHQ7_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_concentrating" text="Trouble concentrating on things, such as reading the newspaper or watching television"}
                            </p>
                            <div class="nicer even-nicer even-nicer-4 push group hug">
                                <div>
                                    <input id="concentration_issues_0" name="concentration_issues" value="0" type="radio" required>
                                    <label id="concentration_issues_0_highlight" for="concentration_issues_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                                </div>
                                <div>
                                    <input id="concentration_issues_1" name="concentration_issues" value="1" type="radio" required>
                                    <label id="concentration_issues_1_highlight" for="concentration_issues_1">{translate language=$language key="health_survey_several" text="Several days"}</label>
                                </div>
                                <div>
                                    <input id="concentration_issues_2" name="concentration_issues" value="2" type="radio" required>
                                    <label id="concentration_issues_2_highlight" for="concentration_issues_2">{translate language=$language key="health_survey_half" text="Half the days"}</label>
                                </div>
                                <div>
                                    <input id="concentration_issues_3" name="concentration_issues" value="3" type="radio" required>
                                    <label id="concentration_issues_3_highlight" for="concentration_issues_3">{translate language=$language key="health_survey_every" text="Nearly every day"}</label>
                                </div>
                            </div>
                        </div>
                        <div class="depression_check hidden_obj">
                            <p class="contains-audio special-size">
                                <span class="audio"><audio src="/audio/a15_10_PHQ8_{$language|upper}.mp3"></audio></span>
                                {translate language=$language key="health_survey_slow" text="Moving or speaking so slowly that other people could have noticed, or the opposite, being so fidgety or restless that you have been moving around a lot more than usual"}
                            </p>
                            <div class="nicer even-nicer even-nicer-4 push group hug">
                                <div>
                                    <input id="feeling_slow_0" name="feeling_slow" value="0" type="radio" required>
                                    <label id="feeling_slow_0_highlight" for="feeling_slow_0">{translate language=$language key="health_survey_not" text="Not at all"}</label>
                                </div>
                                <div>
                                    <input id="feeling_slow_1" name="feeling_slow" value="1" type="radio" required>
                                    <label id="feeling_slow_1_highlight" for="feeling_slow_1">{translate language=$language key="health_survey_several" text="Several days"}</label>
                                </div>
                                <div>
                                    <input id="feeling_slow_2" name="feeling_slow" value="2" type="radio" required>
                                    <label id="feeling_slow_2_highlight" for="feeling_slow_2">{translate language=$language key="health_survey_half" text="Half the days"}</label>
                                </div>
                                <div>
                                    <input id="feeling_slow_3" name="feeling_slow" value="3" type="radio" required>
                                    <label id="feeling_slow_3_highlight" for="feeling_slow_3">{translate language=$language key="health_survey_every" text="Nearly every day"}</label>
                                </div>
                            </div>
                        </div>
                    </section>

                    <section id="page18" class="step">
                        <div class="box">
                            <div>
                                <img src="/assets/images/photos/life-stress/01.jpg">
                            </div>
                            <div>
                                <h4 class="h2 contains-audio">
                                    <span class="audio"><audio src="/audio/a16_1_heading_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_stress_header" text="Stress"}
                                </h4>
                                <p class="contains-audio special-size">
                                    <span class="audio"><audio src="/audio/a16_2_stress1_{$language|upper}.mp3"></audio></span>
                                    {translate language=$language key="health_survey_stress" text="In the past week, have you been under a lot of stress due to a major change or event or from a stressful situation (for example, family, work, or financial problems)?"}
                                </p>
                                <div class="nicer even-nicer even-nicer-2 push group hug squash">
                                    <div>
                                        <input id="stress_0" name="stress" value="0" type="radio" required>
                                        <label id="stress_0_highlight" for="stress_0">{translate language=$language key="health_survey_no" text="No"}</label>
                                    </div>
                                    <div>
                                        <input id="stress_1" name="stress" value="1" type="radio" required>
                                        <label id="stress_1_highlight" for="stress_1">{translate language=$language key="health_survey_yes" text="Yes"}</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a16_3_stress2_0intro_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_common" text="Below are common problems that many people have. Are you experiencing any of the following?"}
                        </p>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a16_4_stress2_1_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_food" text="Running out of food before having enough money or food stamps to buy more"}
                        </p>
                        <div class="nicer even-nicer even-nicer-2 push group hug squash">
                            <div>
                                <input id="running_out_of_food_0" name="running_out_of_food" value="0" type="radio" required>
                                <label id="running_out_of_food_0_highlight" for="running_out_of_food_0">{translate language=$language key="health_survey_no" text="No"}</label>
                            </div>
                            <div>
                                <input id="running_out_of_food_1" name="running_out_of_food" value="1" type="radio" required>
                                <label id="running_out_of_food_1_highlight" for="running_out_of_food_1">{translate language=$language key="health_survey_yes" text="Yes"}</label>
                            </div>
                        </div>
                    </section>

                    <section id="page19" class="step">
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a16_5_stress2_2_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_bills" text="Problems paying bills, like electric, gas, water, or phone bills"}
                        </p>
                        <div class="nicer even-nicer even-nicer-2 push group hug squash">
                            <div>
                                <input id="bill_problems_0" name="bill_problems" value="0" type="radio" required>
                                <label id="bill_problems_0_highlight" for="bill_problems_0">{translate language=$language key="health_survey_no" text="No"}</label>
                            </div>
                            <div>
                                <input id="bill_problems_1" name="bill_problems" value="1" type="radio" required>
                                <label id="bill_problems_1_highlight" for="bill_problems_1">{translate language=$language key="health_survey_yes" text="Yes"}</label>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a16_6_stress2_3_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_transport" text="Not having enough money to pay for bus fare or access to reliable transportation to medical appointments"}
                        </p>
                        <div class="nicer even-nicer even-nicer-2 push group hug squash">
                            <div>
                                <input id="transportation_problems_0" name="transportation_problems" value="0" type="radio" required>
                                <label id="transportation_problems_0_highlight" for="transportation_problems_0">{translate language=$language key="health_survey_no" text="No"}</label>
                            </div>
                            <div>
                                <input id="transportation_problems_1" name="transportation_problems" value="1" type="radio" required>
                                <label id="transportation_problems_1_highlight" for="transportation_problems_1">{translate language=$language key="health_survey_yes" text="Yes"}</label>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a16_7_stress2_4_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_housing" text="Unstable housing including eviction, foreclosure, homelessness or staying with friends/family"}
                        </p>
                        <div class="nicer even-nicer even-nicer-2 push group hug squash">
                            <div>
                                <input id="unstable_housing_0" name="unstable_housing" value="0" type="radio" required>
                                <label id="unstable_housing_0_highlight" for="unstable_housing_0">{translate language=$language key="health_survey_no" text="No"}</label>
                            </div>
                            <div>
                                <input id="unstable_housing_1" name="unstable_housing" value="1" type="radio" required>
                                <label id="unstable_housing_1_highlight" for="unstable_housing_1">{translate language=$language key="health_survey_yes" text="Yes"}</label>
                            </div>
                        </div>
                    </section>

                    <section id="page20" class="step">
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a16_8_stress2_5_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_abuse" text="Have you been hit, slapped, kicked, or physically hurt by someone in the past year?"}
                        </p>
                        <div class="nicer even-nicer even-nicer-2 push group hug squash">
                            <div>
                                <input id="physical_abuse_0" name="physical_abuse" value="0" type="radio" required>
                                <label id="physical_abuse_0_highlight" for="physical_abuse_0">{translate language=$language key="health_survey_no" text="No"}</label>
                            </div>
                            <div>
                                <input id="physical_abuse_1" name="physical_abuse" value="1" type="radio" required>
                                <label id="physical_abuse_1_highlight" for="physical_abuse_1">{translate language=$language key="health_survey_yes" text="Yes"}</label>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a16_9_stress2_6_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_safe" text="Do you feel safe where you live?"}
                        </p>
                        <div class="nicer even-nicer even-nicer-2 push group hug squash">
                            <div>
                                <input id="unsafe_at_home_0" name="unsafe_at_home" value="0" type="radio" required>
                                <label id="unsafe_at_home_0_highlight" for="unsafe_at_home_0">{translate language=$language key="health_survey_no" text="No"}</label>
                            </div>
                            <div>
                                <input id="unsafe_at_home_1" name="unsafe_at_home" value="1" type="radio" required>
                                <label id="unsafe_at_home_1_highlight" for="unsafe_at_home_1">{translate language=$language key="health_survey_yes" text="Yes"}</label>
                            </div>
                        </div>
                    </section>

                    <section id="page21" class="step">
                        <h4 class="h2 contains-audio">
                            <span class="audio"><audio src="/audio/a17_1_heading_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_about_header" text="About You"}
                        </h4>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a17_2_ethnic_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_hispanic" text="Do you consider yourself Hispanic or Latino?"}
                        </p>
                        <div class="nicer even-nicer even-nicer-2 push hug group squash">
                            <div>
                                <input id="latino_0" name="latino" value="0" type="radio" required>
                                <label id="latino_0_highlight" for="latino_0">{translate language=$language key="health_survey_no" text="No"}</label>
                            </div>
                            <div>
                                <input id="latino_1" name="latino" value="1" type="radio" required>
                                <label id="latino_1_highlight" for="latino_1">{translate language=$language key="health_survey_yes" text="Yes"}</label>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a17_3_race_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_race" text="What race do you consider yourself to be? You can pick more than one."}
                        </p>
                        <div class="nicer push group hug">
                            <div class="pure-g">
                                <div class="pure-u-1 pure-u-md-1-2">
                                    <div>
                                        <input id="race_0" name="race" value="0" type="checkbox" required>
                                        <label id="race_0_highlight" for="race_0">{translate language=$language key="health_survey_race_0" text="Native American or Alaska Native"}</label>
                                    </div>
                                    <div>
                                        <input id="race_1" name="race" value="1" type="checkbox" required>
                                        <label id="race_1_highlight" for="race_1">{translate language=$language key="health_survey_race_1" text="Asian"}</label>
                                    </div>
                                    <div>
                                        <input id="race_2" name="race" value="2" type="checkbox" required>
                                        <label id="race_2_highlight" for="race_2">{translate language=$language key="health_survey_race_2" text="Black or African American"}</label>
                                    </div>
                                </div>
                                <div class="pure-u-1 pure-u-md-1-2">
                                    <div>
                                        <input id="race_3" name="race" value="3" type="checkbox" required>
                                        <label id="race_3_highlight" for="race_3">{translate language=$language key="health_survey_race_3" text="Native Hawaiian or Other Pacific Islander"}</label>
                                    </div>
                                    <div>
                                        <input id="race_4" name="race" value="4" type="checkbox" required>
                                        <label id="race_4_highlight" for="race_4">{translate language=$language key="health_survey_race_4" text="White"}</label>
                                    </div>
                                    <div>
                                        <input id="race_5" name="race" value="5" type="checkbox" required>
                                        <label id="race_5_highlight" for="race_5">{translate language=$language key="health_survey_race_5" text="Some other race"}</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <p class="contains-audio special-size">
                            <span class="audio"><audio src="/audio/a17_4_school_{$language|upper}.mp3"></audio></span>
                            {translate language=$language key="health_survey_education" text="Education (years in school):"}
                        </p>
                        <div class="nicer even-nicer even-nicer-6 push hug group">
                            <div>
                                <input id="education_0" name="education" value="0" type="radio" required>
                                <label id="education_0_highlight" for="education_0">{translate language=$language key="health_survey_education_0" text="Less than high school"}</label>
                            </div>
                            <div>
                                <input id="education_1" name="education" value="1" type="radio" required>
                                <label id="education_1_highlight" for="education_1">{translate language=$language key="health_survey_education_1" text="High school or GED"}</label>
                            </div>
                            <div>
                                <input id="education_2" name="education" value="2" type="radio" required>
                                <label id="education_2_highlight" for="education_2">{translate language=$language key="health_survey_education_2" text="Some college"}</label>
                            </div>
                            <div>
                                <input id="education_3" name="education" value="3" type="radio" required>
                                <label id="education_3_highlight" for="education_3">{translate language=$language key="health_survey_education_3" text="College Graduate"}</label>
                            </div>
                            <div>
                                <input id="education_4" name="education" value="4" type="radio" required>
                                <label id="education_4_highlight" for="education_4">{translate language=$language key="health_survey_education_4" text="Master's or professional degree"}</label>
                            </div>
                            <div>
                                <input id="education_5" name="education" value="5" type="radio" required>
                                <label id="education_5_highlight" for="education_5">{translate language=$language key="health_survey_education_5" text="Doctoral degree"}</label>
                            </div>
                        </div>
                    </section>

                    <footer class="steps-nav">
                        <div class="steps-nav-next">
                            <button class="pure-button button-larger nav-button button button-orange">{translate language=$language key="health_survey_next" text="Next"} <i class="fa fa-lg fa-angle-right" aria-hidden="true"></i></button>
                        </div>
                        <div class="steps-nav-submit">
                            <button class="health_form_submit pure-button button button-larger button-green" type="submit"><i class="fa fa-lg fa-check" aria-hidden="true"></i>{translate language=$language key="health_survey_submit" text="Submit"}</button>
                        </div>
                        <div class="steps-nav-prev">
                            <button class="pure-button button-larger nav-button button button-blue"><i class="fa fa-lg fa-angle-left" aria-hidden="true"></i>{translate language=$language key="health_survey_back" text="Back"}</button>
                        </div>
                        <div class="steps-nav-close">
                            <a href="/healthsurvey" class="pure-button button button-larger button-red"><i class="fa fa-times" aria-hidden="true"></i>{translate language=$language key="health_survey_close" text="Close"}</a>
                        </div>
                    </footer>

                </form>

            </div>

        </div>

        <footer>
            <a href='/dashboard'>Back to Home</a>
        </footer>

    </div>

</div>

{/block}

{block name="footer"}{/block}

{block name="foot_extra"}
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.js"></script>
    <script src="/assets/scripts/form-pager.js"></script>
    <script src="/assets/scripts/form-driver.js"></script>
    <script src="/assets/scripts/audio.js"></script>
    <script src="/assets/scripts/audio_highlight.js"></script>
{/block}
