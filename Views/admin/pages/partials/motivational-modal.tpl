{** Motivational modal **}
<div class="modal fade"  id="motivationalModal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Motivational Prompt</h4>
            </div>
            <form id="motivationalData">
            <div class="modal-body">
                <input type="hidden" name="prompt_id" class="prompt_id" />
                <input type="hidden" name="user_id" class="user_id" />
                  <div class="container">
                    <div class="row form-group">
                        <div class="col-md-1">
                            <label>Start Date:</label>
                        </div>
                        <div class="col-md-5">
                            <div class="start_date data moti-text"></div>

                            <div class="col-md-4">
                                <input class="data form-control start_date" type="text" name="start_date" />
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-1">
                            <label>Start Time:</label>
                        </div>
                        <div class="col-md-5">
                            <div class="start_time moti-text"></div>
                            <div class="col-md-4">
                                <select class='moti_time moti_hour moti_input form-control' name='event_time_hour'>
                                    <option value=''>Hour</option>
                                    {for $foo=1 to 12}
                                        <option value='{$foo}'>{$foo}</option>
                                    {/for}
                                </select>
                            </div>
                            <div class="col-md-4">
                                <select class='moti_time moti_minute moti_input form-control' name='event_time_minutes'>
                                    <option value=''>Minutes</option>
                                    {for $foo=0 to 59 step 5}
                                        <option value='{$foo}'>{"%02d"|sprintf:$foo}</option>
                                    {/for}
                                </select>
                            </div>
                            <div class="col-md-4">
                                <select class='moti_time moti_tod moti_input form-control' name='start_meridian'>
                                    <option value=''>{translate language=$language key="am" text="a.m."}/{translate language=$language key="pm" text="p.m."}</option>
                                    <option value='am'>{translate language=$language key="am" text="a.m."}</option>
                                    <option value='pm'>{translate language=$language key="pm" text="p.m."}</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-1">
                            <label>Frequency:</label>
                        </div>
                        <div class="col-md-5">
                            <div class="frequency moti-text"></div>
                            <div class="col-md-4">
                                <select class="motivation_freq moti_input form-control" name="frequency"></label>
                                    <option value="">{translate language=$language key="action_plan_choose" text="Choose …"}</option>
                                    <option value="daily">{translate language=$language key="action_plan_daily" text="Daily"}</option>
                                    <option value="every_other_day">{translate language=$language key="action_plan_other_day" text="Every Other Day"}</option>
                                    <option value="weekly">{translate language=$language key="action_plan_weekly" text="Weekly"}</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-1">
                            <label>Method:</label>
                        </div>
                        <div class="col-md-5">
                            <div class="receive_method moti-text"></div>
                            <div class="col-md-4">
                                <select class="moti_delivery moti_input form-control" name="receive_method"></label>
                                    <option value="">{translate language=$language key="action_plan_choose" text="Choose …"}</option>
                                    <option value="text">{translate language=$language key="action_plan_text" text="Text Message"}</option>
                                    <option value="email">{translate language=$language key="action_plan_email" text="Email"}</option>
                                    <option value="text_email">{translate language=$language key="action_plan_both" text="Email and Text Message"}</option>
                                </select>
                            </div>
                        </div>
                    </div><div class="row form-group">
                        <div class="col-md-1">
                            <label>User Email:</label>
                        </div>
                        <div class="col-md-5">
                            <div class="user_email moti-text"></div>
                            <div class="col-md-4">
                                <input class="data form-control user_email" type="text" name="user_email" />
                            </div>
                        </div>
                    </div><div class="row form-group">
                        <div class="col-md-1">
                            <label>User Phone:</label>
                        </div>
                        <div class="col-md-5">
                            <div class="user_mobile moti-text"></div>
                            <div class="col-md-4">
                                <input class="data form-control user_mobile" type="text" name="user_mobile" />
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-1">
                            <label>Message:</label>
                        </div>
                        <div class="col-md-5">
                            <div class="message moti-text"></div>
                            <div class="col-md-12">
                                <textarea class="motivation_message_body moti_input texter form-control" name="message"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left edit-button">Edit</button>
                    <button type="button" class="btn btn-default pull-left update-button">Update</button>
                    <button type="button" class="btn btn-default pull-left cancel-button">Cancel</button>
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal" id="cancel">Close</button>
                </div>
            </div>
            </form>
        </div>
    </div>
</div>