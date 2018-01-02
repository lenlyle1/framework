
        <div class="modal fade"  id="followupActionBasicModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel">Followup Details</h4>
                    </div>
                    <div class="modal-body">
                        <div id="followUpCopy">
                            <div class="row">
                            {if \Lib\User\User::can('view_patient_phi', $userPermissions)}
                                <div class="col-md-3">
                                    <label>Patient Name:</label>
                                </div>
                                <div class="col-md-9 patient_name"></div>
                            {else}
                                <div class="col-md-3">
                                    <label>Patient Identifier:</label>
                                </div>
                                <div class="col-md-9 patient_identifier"></div>
                            {/if}
                            </div>

                            <div class="row">
                                <div class="col-md-3">
                                    <label>Followup Date:</label>
                                </div>
                                <div class="col-md-9 followup_date"></div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">
                                    <label>Followup Date:</label>
                                </div>
                                <div class="col-md-9 followup_date"></div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">

                                    <label>Followup Time:</label>
                                </div>
                                <div class="col-md-9 followup_time"></div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">

                                    <label>Provider:</label>
                                </div>
                                <div class="col-md-9 provider_name"></div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">

                                    <label>Regarding:</label>
                                </div>
                                <div class="col-md-9 regarding"></div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">
                                    <label>Followup Method:</label>
                                </div>
                                <div class="col-md-9 followup_method"></div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">

                                    <label>Reminder Method:</label>
                                </div>
                                <div class="col-md-9 reminder_method"></div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">

                                    <label>Notes:</label>
                                </div>
                                <div class="col-md-9 notes"></div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">

                                    <label>Outcome:</label>
                                </div>
                                <div class="col-md-9 outcome"></div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">

                                    <label>Next Step:</label>
                                </div>
                                <div class="col-md-9 next_step"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
