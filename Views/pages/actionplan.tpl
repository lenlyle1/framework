{extends file='../site_base.tpl'}

{block name="head_extra"}
    <link rel="stylesheet" href="/assets/styles/actionplan.css">
{/block}

{block name="content"}
    <meta name="user_id" content="{$user_id}"/>
    <meta name="action_plan_id" content="{$action_plan_id}"/>

<div id="action-plan-intro">
    <div class='nav_option'>
        <div class='ap_workflow_select'>
            <p>{translate language=$language key="action_plan_update" text="Would you like to update or make a change to a previous Action Plan, or start a new Action Plan in a different health area?"}</p>
            <div>
                <button class="ap_flow new_ap pure-button button-special">{translate language=$language key="action_plan_new" text="New Action Plan"}</button>
                <button class="ap_flow existing_ap pure-button button-special">{translate language=$language key="action_plan_existing" text="Existing Action Plan"}</button>
            </div>
        </div>
        <div class="push spacer">
            <label class="selecter">
                <select class="existing_action_plan_select hidden_obj">
                    <option value="0">{translate language=$language key="action_plan_select" text="Select an Action Plan"}</option>
                    {foreach from=$ap_list|@array_reverse key=key item=value}
                        <option value="{$value.batch_id}">{$value.created_at}</option>
                    {/foreach}
                 </select>
            </label>
        </div>
        <div class='ap_fill_method hidden_obj'>
            <p>{translate language=$language key="action_plan_filling" text="How are you filling out this Action Plan?"}</p>
            <div class="nicer push">
                <input id="coached_0" name="coach_select" value="0" type="radio"></input>
                <label for="coached_0">{translate language=$language key="action_plan_own" text="On My Own"}</label></br>
                <input id="coached_1" name="coach_select" value="1" type="radio"></input>
                <label for="coached_1">{translate language=$language key="action_plan_professional" text="With a Health Professional"}</label>
            </div>
            <div class="push alone">
                <button class="save_coach pure-button button-larger button-orange">{translate language=$language key="next" text="Next"}</button>
            </div>
        </div>
    </div>
</div>

<div id="action-plan" data-survey-id="{$surveys[$surveys|@count-1].batch_id}">
    <div class="tabber ap_list_layout hidden_obj">
        <ul class="tabber-tabs">
            <li class="ap_list_item tabber-active" ap_step="1">
                <p class="line_desc_1">{translate language=$language key="action_plan_goal" text="My Goal"}</p>
                <p class="line_desc_2 action_plan_item goal_set"></p>
            </li>
            <li class="ap_list_item" ap_step="2">
                <p class="line_desc_1" id="set_action">{translate language=$language key="action_plan_action_brainstorming" text="My Action (Brainstorming)"}</p>
                <p class="action_plan_item action_set"></p>
            </li>
            <li class="ap_list_item" ap_step="3">
                <p class="line_desc_1" id="set_action">{translate language=$language key="action_plan_action" text="My Action"}</p>
                <p class="line_desc_2 action_plan_item brain_storm"></p>
            </li>
            <li class="ap_list_item" ap_step="4">
                <p class="line_desc_1" id="set_plan">{translate language=$language key="action_plan_plan" text="My Plan"}</p>
                <p class="line_desc_2 plan_set"></p>
            </li>
            <li class="ap_list_item" ap_step="5">
                <p class="line_desc_1" id="set_plan">{translate language=$language key="action_plan_barrier" text="My Barrier"}</p>
                <p class="line_desc_2 barrier_set"></p>
            </li>
            <li class="ap_list_item" ap_step="6">
                <p class="line_desc_1" id="set_plan">{translate language=$language key="action_plan_strategy" text="My Strategy"}</p>
                <p class="line_desc_2 strategy_set"></p>
            </li>
            <li class="ap_list_item" ap_step="7">
                <p class="line_desc_1" id="set_plan">{translate language=$language key="action_plan_tracking" text="My Tracking Methods"}</p>
                <p class="line_desc_2 tracking_set"></p>
            </li>
            <li class="ap_list_item" ap_step="8">
                <p class="line_desc_1" id="set_plan">{translate language=$language key="action_plan_confidence" text="My Confidence"}</p>
                <p class="line_desc_2 confidence_set"></p>
            </li>
            <li class="ap_list_item" ap_step="9">
                <p class="line_desc_1" id="set_plan">{translate language=$language key="action_plan_steps" text="Next Steps"}</p>
                <p class="action_plan_item"></p>
            </li>
        </ul>
        <div class="content_container hidden_obj tabber-panel"></div>
    </div>

    <div class='ap_1 hidden_obj'>
             <p class='take_survey hidden_obj'>
            {translate language=$language key="action_plan_no_recent_survey" text="You don't have a recent survey on file, we recommend taking a survey.. for reasons."}
            <a href='/healthsurvey'>{translate language=$language key="action_plan_take_survey" text="Take a Health Survey"}</a>
        </p>

        <h3>{translate language=$language key="action_plan_choose_goal" text="1. Touch or click on an image to choose a goal, or write in your own in the box below."}</h3>
        <p class='focus_area_cont'>
             {if $focus_areas.area_1}
                {translate language=$language key="action_plan_discuss_doctor" text="Previously you had selected the following as potential topic(s) to discuss with your doctor: "}</br>
                <span class='selected_areas'>{$focus_areas.area_1}</span>
                {if $focus_areas.area_2}
                    {translate language=$language key="and" text="and"} <span class='selected_areas'>{$focus_areas.area_2}</span>
                {/if}
            {/if}
        </p>
        <p>{translate language=$language key="action_plan_areas_consider" text="Based on your most recent health survey, these are the areas you could consider making changes in:"}</p>
        <div id="ap_mutable"></div>
    </div>

    <div class='ap_2 hidden_obj'>
        <h3>{translate language=$language key="action_plan_what_do" text="2. My Action: What can you do to reach this goal?"}</h3>
        <p>{translate language=$language key="action_plan_brainstorm" text="Let’s brainstorm 2 or 3 things you can try over the next couple of weeks."}</p>
        {*
            <p>{translate language=$language key="action_plan_stuck" text="Stuck for ideas? Have a look at some of our <a class=\"ap_modal_popper ap_tips\" href=\"#\" target=\"_blank\">Action Plan Tips</a> or <a class=\"ap_modal_popper health_tips\" href=\"#\" target=\"_blank\">Health Tips</a> to get started."}</p>
        *}
        <p>{translate language=$language key="action_plan_stuck" text="Stuck for ideas? Have a look at some of our <a class=\"ap_modal_popper ap_tips\" href=\"#\" target=\"_blank\">Action Plan Tips</a> to get started."}</p>
        <div class="push">
            <label class="sizer">
                <span class='brain_storm_input' data-input_number='1'>{translate language=$language key="action_plan_placeholder_idea_1" text="Item 1"}: <input type="text" class="brain_storm inputer" placeholder='{translate language=$language key="action_plan_enter_idea" text="Enter your idea here"}'></span>
            </label>
        </div>
        <div class="push">
            <label class="sizer">
                <span class='brain_storm_input' data-input_number='2'>{translate language=$language key="action_plan_placeholder_idea_2" text="Item 2"}: <input type="text" class="brain_storm inputer" placeholder='{translate language=$language key="action_plan_enter_idea" text="Enter your idea here"}'></span>
            </label>
        </div>
        <div class="push">
            <label class="sizer">
                <span class='brain_storm_input' data-input_number='3'>{translate language=$language key="action_plan_placeholder_idea_3" text="Item 3"}: <input type="text" class="brain_storm inputer" placeholder='{translate language=$language key="action_plan_enter_idea" text="Enter your idea here"}'></span>
            </label>
        </div>
    </div>

    <div class='ap_3 hidden_obj'>
        <h3>{translate language=$language key="action_plan_action_choose" text="3. My Action: Now choose one action you would like to work on."}</h3>
        <p>{translate language=$language key="action_plan_circle" text="Touch or click on the circle next to the action you would like to try."}</p>
        <div id="ap_3-target"></div>
    </div>

    <div class='ap_4 hidden_obj'>
        <h3 class="collapse">{translate language=$language key="action_plan_when" text="4. When will you do it?"}</h3>
        <p>{translate language=$language key="action_plan_which_days" text="How many days a week? Which days? What time? For how long?"}</p>
        <div class="push">
            <textarea cols='25' rows='10' class="texter plan_text" placeholder='{translate language=$language key="action_plan_placeholder_often" text="Write down how often you will do it."}'></textarea>
        </div>
    </div>

    <div class='ap_5 hidden_obj'>
        <h3 class="collapse">{translate language=$language key="action_plan_in_the_way" text="5. What might get in the way?"}</h3>
        <div class="push">
            <textarea cols='25' rows='10' class="texter barrier_text" placeholder='{translate language=$language key="action_plan_placeholder_in_the_way" text="Write down things that might get in the way of you reaching your goal."}'></textarea>
        </div>
    </div>

    <div class='ap_6 hidden_obj'>
        <p><h3>
           {translate language=$language key="action_plan_stop_things" text="What will you do to stop these things getting in the way? How will you deal with them if they come up?"}</h3><p>
        <div class="push">
            <textarea cols='25' rows='10' class="texter strategy_text" placeholder='{translate language=$language key="action_plan_placeholder_stop_things" text="How will you deal with them if they come up?"}'></textarea>
        </div>
    </div>

    <div class='ap_7 hidden_obj'>
        <h3>{translate language=$language key="action_plan_record" text="7. How will you record your progress?"}</h3>
        <p>{translate language=$language key="action_plan_track" text="Keeping a track of your progress can help you look back and see how you did."}</p>
        <div class="nicer push hug">
            <div>
                <input id="track_1" class="track_text" type="checkbox" value="paper">
                <label for="track_1">{translate language=$language key="action_plan_paper" text="I will record it on paper"}</label>
            </div>
            <div>
                <input id="track_2" class="track_text" type="checkbox" value="calendar">
                <label for="track_2">{translate language=$language key="action_plan_calendar" text="A Calendar"}</label>
            </div>
            <div>
                <input id="track_3" class="track_text" type="checkbox" value="app">
                <label for="track_3">{translate language=$language key="action_plan_app" text="An app on my phone or computer"}</label>
            </div>
            <div>
                <input id="track_4" class="track_text track_else" type="checkbox" value="else">
                <label for="track_4">{translate language=$language key="action_plan_else" text="I will use something else"}</label>
            </div>
        </div>
        <div class="push">
            <textarea cols='25' rows='2' style="resize: none;" class="texter track_else_text" placeholder='{translate language=$language key="action_plan_write" text="Write in Tracking Tool"}'></textarea>
        </div>
    </div>

    <div class='ap_8 hidden_obj'>
        <h3>{translate language=$language key="action_plan_confident_follow" text="8. How confident are you that you can follow this plan?"}</h3>
        <div class="scale">
        <div class='hidden_obj confidence_warn' style='color:orange;'>
            <i class="fa fa-lg fa-exclamation-triangle color-orange"></i>
            <span>{translate language=$language key="action_plan_rating" text="Your confidence rating was "}<span  class='warn_value'></span>.
                 </br>
                {translate language=$language key="action_plan_revise" text="Would you like to revise your plan to something you are more confident in?"}
            </span>
        </div>

            <p><i class="fa fa-long-arrow-left" aria-hidden="true"></i>{translate language=$language key="not_confident" text="Not confident"}</p>
            <ul>
                <li class="confidence_icon confidence_1" data-confidence-level="1">1</li>
                <li class="confidence_icon confidence_2" data-confidence-level="2">2</li>
                <li class="confidence_icon confidence_3" data-confidence-level="3">3</li>
                <li class="confidence_icon confidence_4" data-confidence-level="4">4</li>
                <li class="confidence_icon confidence_5" data-confidence-level="5">5</li>
                <li class="confidence_icon confidence_6" data-confidence-level="6">6</li>
                <li class="confidence_icon confidence_7" data-confidence-level="7">7</li>
                <li class="confidence_icon confidence_8" data-confidence-level="8">8</li>
                <li class="confidence_icon confidence_9" data-confidence-level="9">9</li>
                <li class="confidence_icon confidence_10" data-confidence-level="10">10</li>
            </ul>
            <p>{translate language=$language key="very_confident" text="Very confident"} <i class="fa fa-long-arrow-right" aria-hidden="true"></i></p>
        </div>
    </div>

    <div class='ap_9 hidden_obj'>
        <div class="push">
            <label class="sizer picker picker-date">
                <input class="ap_start_date inputer" type="text" placeholder='{translate language=$language key="action_plan_placeholder_when_start" text="When do you want to start?"}'>
            </label>
        </div>

        <div class='moti_header spacer'>
            <p>{translate language=$language key="action_plan_motivational" text="Receving a motivational message, like \"You can do it!\" can help you stick to your plan"}</p>
            <p>{translate language=$language key="action_plan_message_option" text="Would you like to set up a message to receieve via text or email?  You can write your own and choose how often you get it over the next two weeks"}</p>
            <a class='moti_display show_section  pure-button button-smaller button button-blue' href='#'>{translate language=$language key="yes" text="Yes"}</a>
            <a class='moti_display hide_section  pure-button button-smaller button button-blue' href='#'>{translate language=$language key="no" text="No"}</a>
        </div>

        <div class='action_plan_moti_container hidden_obj'>
            <div class="push">
                <label>
                    <span>{translate language=$language key="action_plan_message" text="My Message"}</span>
                    <textarea class="motivation_message_body moti_input texter"></textarea>
                </label>
                <div class='moti_counter_header'>
                    {translate language=$language key="action_plan_characters" text="<span class=\"moti_counter\">140</span> Characters remaining"}
                </div>
            </div>
            <div class='push'>
                <label>
                    <span>Email Address:</span>
                    <input type="text" class="moti_input inputer moti_email" value="{$user_details['email']}">
                </label>
            </div>
            <div class='push'>
                <label>
                    <span>Mobile Phone:</span>
                    <input type="text" class="moti_input inputer moti_phone" value="{$user_details['mobile_phone']}">
                </label>
            </div>
            <div class="push">
                <label class="selecter">
                    <span>{translate language=$language key="action_plan_how_often" text="How often do you want to receive it?"}</span>
                    <select class="motivation_freq moti_input" name="moti_freq"></label>
                        <option value="">{translate language=$language key="action_plan_choose" text="Choose …"}</option>
                        <option value="daily">{translate language=$language key="action_plan_daily" text="Daily"}</option>
                        <option value="every_other_day">{translate language=$language key="action_plan_other_day" text="Every Other Day"}</option>
                        <option value="weekly">{translate language=$language key="action_plan_weekly" text="Weekly"}</option>
                      </select>
                </label>
            </div>
            <div class="push">
                <label class="selecter">
                    <span>{translate language=$language key="action_plan_receive_type" text="How would you like to receive it?"}</span>
                    <select class="moti_delivery moti_input" name="moti_delivery"></label>
                        <option value="">{translate language=$language key="action_plan_choose" text="Choose …"}</option>
                        <option value="text">{translate language=$language key="action_plan_text" text="Text Message"}</option>
                        <option value="email">{translate language=$language key="action_plan_email" text="Email"}</option>
                        <option value="text_email">{translate language=$language key="action_plan_both" text="Email and Text Message"}</option>
                    </select>
                </label>
            </div>
            <div class='moti_selectors selecters push'>
                <span>{translate language=$language key="action_plan_time" text="At what time?"}</span>
                <label class="selecter">
                    <select class='moti_time moti_hour moti_input' name='moti_hour'>
                        <option value=''>{translate language=$language key="action_plan_hour" text="Select hour"}</option>
                        {for $foo=1 to 12}
                            <option value='{$foo}'>{$foo}</option>
                        {/for}
                    </select>
                </label>
                <label class="selecter">
                    <select class='moti_time moti_minute moti_input' name='moti_minute'>
                        <option value=''>{translate language=$language key="action_plan_minute" text="Select minute"}</option>
                        {for $foo=0 to 59 step 5}
                            <option value='{$foo}'>{$foo}</option>
                        {/for}
                    </select>
                </label>
                <label class="selecter">
                    <select class='moti_time moti_tod moti_input' name='moti_tod'>
                        <option value=''>{translate language=$language key="am" text="a.m."}/{translate language=$language key="pm" text="p.m."}</option>
                        <option value='AM'>{translate language=$language key="am" text="a.m."}</option>
                        <option value='PM'>{translate language=$language key="pm" text="p.m."}</option>
                    </select>
                </label>
            </div>
            <div class='moti_flow_control push'>
                <button class='moti_clear pure-button button button-red'>{translate language=$language key="clear" text="Clear"}</button>
                <button class='moti_save pure-button button button-green'>{translate language=$language key="save" text="Save"}</button>
            </div>
        </div>

        <div class="followup_container hidden_obj push">
            <button class="set_followup pure-button button-larger button button-blue">{translate language=$language key="action_plan_schedule" text="Schedule a Follow Up"}</button>
        </div>

        <div class="spacer">
            <a href="#" class="finalize_ap pure-button button-larger button button-green">{translate language=$language key="action_plan_finish" text="Finish Action Plan"}</a>
        </div>
    </div>

    <div class='ap_grid_template hidden_obj'></div>
    <footer class="shifter ap_container hidden_obj">
        <button class="ap_movement ap_forward shifter-right pure-button button-larger button button-orange">{translate language=$language key="next" text="Next"} <i class="fa fa-lg fa-angle-right" aria-hidden="true"></i></button>
        <button class="ap_movement ap_back shifter-right pure-button button-larger button button-blue"><i class="fa fa-lg fa-angle-left" aria-hidden="true"></i> {translate language=$language key="back" text="Back"}</button>
    </footer>

</div>

{/block}

{block name="modals"}

<div class="modal" data-remodal-id="action-plan-followup">
    <header>
        <h3>{translate language=$language key="action_plan_followup_header" text="Schedule a Followup"}</h3>
        <button class="close" data-remodal-action="close"><i class="fa fa-times" aria-hidden="true"></i></button>
    </header>
    <section>
        <div class='followup_sectional selecter selecter-many'>
            <label for="follow-up-hour">
                {translate language=$language key="action_plan_followup_when" text="When will you follow up?"}
            </label>
            <br>
            <select id="follow-up-hour" class='fu_input followup_time followup_hour'>
                <option value=''>{translate language=$language key="action_plan_hour" text="Select hour"}</option>
                {for $foo=1 to 12}
                    <option value='{$foo}'>{$foo}</option>
                {/for}
            </select>
            <select class='fu_input followup_time followup_minute'>
                <option value=''>{translate language=$language key="action_plan_minute" text="Select minute"}</option>
                {for $foo=0 to 59 step 5}
                    <option value='{$foo}'>{$foo}</option>
                {/for}
            </select>
            <select class='fu_input followup_time followup_tod'>
                <option value=''>{translate language=$language key="am" text="a.m."}/{translate language=$language key="pm" text="p.m."}</option>
                <option value='AM'>{translate language=$language key="am" text="a.m."}</option>
                <option value='PM'>{translate language=$language key="pm" text="p.m."}</option>
            </select>
        </div>

        <div class="push followup_sectional selecter">
            <label class="">
                {translate language=$language key="action_plan_placeholder_followup" text="Select a Followup Date"}
                <span class='picker picker-date' style='top:24px;'></span>
                <input class="fu_input followup_date inputer" type="text" placeholder='{translate language=$language key="action_plan_placeholder_followup" text="Select a Followup Date"}'>
            </label>
        </div>

        <div class='followup_sectional selecter'>
            <label>
                {translate language=$language key="action_plan_followup_with" text="Who will you follow up with?"}
                <select class='fu_input followup_coach_selection'>
                    <option value=''>{translate language=$language key="action_plan_select_coach" text="Select a coach or health care professional"}</option>
                    {foreach from=$followup_providers key=key item=value}
                        <option value="{$value->user_id}">{$value->user_name}</option>
                    {/foreach}
                </select>
            </label>
        </div>
        <div class='followup_sectional selecter'>
            <label>
                {translate language=$language key="action_plan_followup_how" text="How will you follow up?"}
                <br>
                <select class='fu_input followup_method_selection'>
                    <option value=''>{translate language=$language key="action_plan_select_method" text="Select a follow-up Method"}</option>
                    <option value='email'>{translate language=$language key="email" text="Email"}</option>
                    <option value='office'>{translate language=$language key="action_plan_office" text="Office Visit"}</option>
                    <option value='phone'>{translate language=$language key="phone" text="Phone"}</option>
                </select>
            </label>
        </div>
        <div class='followup_sectional selecter'>
            <label>
                {translate language=$language key="action_plan_followup_regarding_text" text="What is this followup regarding?"}
                <input type='text' class='fu_input followup_regarding inputer' name ='followup_regarding'/>
            </label>
        </div>
        <div class='followup_sectional selecter'>
            <label>
                {translate language=$language key="action_plan_followup_reminder" text="How would you like to be reminded of this follow up?"}
                <br>
                <select class="fu_input followup_prompt_type" name="followup_prompt_type"></label>
                    <option value="">{translate language=$language key="action_plan_choose" text="Choose a Reminder type"}</option>
                    <option value="1">{translate language=$language key="action_plan_text" text="Text Message"}</option>
                    <option value="2">{translate language=$language key="action_plan_email" text="Email"}</option>
                    <option value="3">{translate language=$language key="action_plan_both" text="Email and Text Message"}</option>
                </select>
            </label>
        </div>

        <div class='hidden_obj followup_sectional selecter fu_phone_input'>
            <label>
                {translate language=$language key="action_plan_phone_reminder" text="What is the preferred phone number?"}
                <br>
                <input type='text' class='fu_input followup_pref_phone inputer' name ='followup_pref_phone' value='{$user->mobile_phone}'/>
            </label>
        </div>

        <div class='hidden_obj followup_sectional selecter fu_email_input'>
            <label>
                {translate language=$language key="action_plan_email_reminder" text="What is the preferred email address?"}
                <br>
                <input type='text' class='fu_input followup_pref_email inputer' name ='followup_pref_email' value='{$user->email_address}'/>
            </label>
        </div>

        <div id='button_container' class="push">
            <button class='followup_clear pure-button button button-red'>{translate language=$language key="clear" text="Clear"}</button>
            <button class='followup_save pure-button button button-green'>{translate language=$language key="schedule" text="Schedule"}</button>
        </div>
        <div class='followup_sectional hidden_obj followup_notify'>
            <p>{translate language=$language key="action_plan_done" text="DONE DONE DONE ODNE ONDEON (done!)"}</p>
        </div>
    </section>
</div>

<!--health tips... modal + iframe-->
<div style="width:1200px !important;" class="modal" data-remodal-id="action-plan-health-tips">
    <header>
        <h3>Health Tips</h3>
        <button class="close" data-remodal-action="close"><i class="fa fa-times" aria-hidden="true"></i></button>
    </header>
    <section>
            <iframe height="700" width="1280" src="/healthContentOnly"></iframe>
    </section>
</div>

<!--action plan tips simple modal-->
<div class="modal" data-remodal-id="action-plan-ap-tips">
    <header>
        <h3>Action Plan Tips</h3>
        <button class="close" data-remodal-action="close"><i class="fa fa-times" aria-hidden="true"></i></button>
    </header>
    <section>
        <ul>
            <li><b>SPECIFIC:</b> Think of something very specific that you can do! For example, a better physical activity plan would be to "walk home from work on Mondays and Fridays" rather than "walk more".</li>
            <li><b>SMALL:</b> Work on one thing at a time and keep it small. Big changes can happen with really small starts.</li>
            <li><b>MEANINGFUL TO YOU:</b> Pick something meaningful to you, NOT what others tell you that you SHOULD do.</li>
            <li><b>DO-ABLE:</b> Select something you think is actually do-able and realistic for you. You could actually do this!</li>
            <li><b>TRY FOR 2 WEEKS:</b> Think of something you can start immediately but only plan to try it for two weeks - this is not forever. At the end of the two weeks you can decide whether or not you want to continue! </li>
            <li><b>TRY TO START SOMETHING NEW - DO NOT PLAN TO STOP SOMETHING:</b> Try to think of something you can begin, not something to stop. For example: a better eating plan is to “add veggies” to your dinner rather than “stop eating junk food”.</li>
            <li><b>CHANGE:</b> Expect to change your plan as you try it out. Most plans require changes once you start!</li>
        </ul>
    </section>
</div>

{/block}

{block name="foot_extra"}

<script src="/assets/scripts/action_plan.js"></script>
<script src="/assets/scripts/bootstrap-datepicker.js"></script>

{/block}
