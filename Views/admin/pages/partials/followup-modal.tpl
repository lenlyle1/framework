
        <div class="modal fade"  id="followupActionModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel">Edit Follow Up</h4>
                    </div>
                    <div class="modal-body">
                        <form id="followup-form">
                        <input type="hidden" name="followup_id" />
                        <input type="hidden" name="action_plan_id" />
                        <input type="hidden" name="user_id" />
                        <span  style='display:none;' class='action_plan_id'></span>

                            <div class="form-group">
                                <label for="followup_date">When will you follow up?</label>
                                <input type="text" name="date" placeholder="Pick a followup date" class="fu-edit-date required form-control"  />
                            </div>
                                <div class="row form-group">
                                    <div class="col-md-12"><label>What time will you follow up?</label></div>
                                    <div class="col-md-2">
                                        <select name="hour" class="fu-edit-hour required form-control">
                                            <option value="">Hour</option>
                                            {for $hour = 1 to 12}
                                            <option value="{$hour}">{$hour}</option>
                                            {/for}
                                        </select>
                                    </div>
                                    <div class="col-md-2">
                                        <select name="minute" class="fu-edit-minute required form-control">
                                            <option value="">Minutes</option>
                                            {for $minute = 0 to 55 step 5}
                                            <option value="{"%02d"|sprintf:$minute}">{$minute}</option>
                                            {/for}
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <select name="meridian" class="fu-edit-meridian required form-control"">
                                        <option value="">am/pm</option>
                                            <option value="AM">AM</option>
                                            <option value="PM">PM</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6"></div>
                                </div>
                            <div class="form-group">
                                <label for="coach_providers">Who will you follow up with?</label>
                                <select name="coach" class="fu-edit-coach required form-control">
                                    <option value="">Select a provider</option>
                                    {foreach $coach_providers as $coach}
                                        <option value="{$coach@key}">{$coach}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="regarding">Regarding</label>
                                <textarea name="regarding" class="fu-edit-regarding required form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="followup_method">How will you follow up?</label>
                                <select name="followup_method" class="fu-edit-method required form-control">
                                    <option value="">Select a method</option>
                                    <option value="phone">By Phone</option>
                                    <option value="email">By email</option>
                                    <option value="office">In person</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="followup_method">Followup Reminder Method:</label>
                                <select name="prompt_type" class="fu-edit-reminder required form-control">
                                    <option value="">Select a method</option>
                                    <option value="1">By Email</option>
                                    <option value="2">By Text</option>
                                    <option value="3">Email and Text</option>
                                </select>
                            </div>
                            <div class="followup-update-items">
                                <div class="form-group">
                                    <label for="notes">Notes</label>
                                    <textarea name="notes" class="fu-edit-notes form-control"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="outcome">Follow-up Outcome</label>
                                    <select name="outcome" class="fu-edit-outcome form-control">
                                        <option value="">Select outcome</option>
                                        {foreach $followupOutcomes as $outcome}
                                            <option value="{$outcome->outcome_id}">{$outcome->outcome_text}</option>
                                        {/foreach}
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="next-step">Next step for follow-up</label>
                                    <select name="nextstep" class="fu-edit-nextstep form-control">
                                        <option value="">Select next step</option>
                                        {foreach $followupNextSteps as $nextStep}
                                            <option value="{$nextStep->step_id}">{$nextStep->step_text}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                        </form>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal" id="cancel">Cancel</button>
                            <button type="button" class="btn btn-primary" id="updateFollowupAction">Update</button>

                        </div>
                    </div>
                </div>
            </div>
        </div>
