<style>
body {
    font-family: Arial, sans-serif;
    padding: 20px;
}
.btn {
    font-size: 14px;
    line-height: 14px;
    letter-spacing: .08em;
    font-weight: normal;
    text-align: center;
    line-height: normal;
    vertical-align: baseline;
    white-space: nowrap;
    cursor: pointer;
    border: none transparent;
    border-radius: 3px;
    padding: 10px 20px;
    display: inline-block;
    zoom: 1;
    box-shadow: none;
    -webkit-tap-highlight-color: transparent;
    -webkit-user-drag: none;
    -webkit-user-select: none;
     -khtml-user-select: none;
       -moz-user-select: none;
        -ms-user-select: none;
         -o-user-select: none;
            user-select: none;
}
.btn::-moz-focus-inner {
    padding: 0;
    border: 0;
}
.btn,
.btn:visited {
    color: #fff;
    background-color: #138d9c;
}
.btn:visited:hover,
.btn:focus,
.btn:focus:hover,
.btn:hover,
.btn:active {
    text-decoration: none;
    color: #fff;
    box-shadow: none;
    background: #138d9c;
}
.btn:hover,
.btn:focus {
    background-image: linear-gradient(
        transparent,
        rgba(0, 0, 0, .05) 40%,
        rgba(0, 0, 0, .1)
    );
}
.btn:focus { outline: 0; }
.btn:active {
    box-shadow: 0 0 0 .2em rgba(0, 0, 0, .15) inset,
                0 0 1em rgba(0, 0, 0, 0.25) inset;
}
.btn[disabled],
.btn.btn-disabled,
.btn.btn-disabled:visited,
.btn.btn-disabled:visited:hover,
.btn.btn-disabled:focus,
.btn.btn-disabled:focus:hover,
.btn.btn-disabled:hover,
.btn.btn-disabled:active {
    border: none;
    background-image: none;
    filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
    filter: alpha(opacity=80);
    -khtml-opacity: 0.65;
      -moz-opacity: 0.65;
       -ms-opacity: 0.65;
        -o-opacity: 0.65;
           opacity: 0.65;
    cursor: not-allowed;
    box-shadow: none;
}
.btn-wrap {
    background: #fff;
    padding: 5px;
    border: 1px solid #ccc;
    box-shadow: 0 0 5px rgba(0, 0, 0, .25);
    position: fixed;
    top: 10px;
    right: 10px;
}
</style>

<div class="btn-wrap">
    <button class="btn" data-clipboard-target="#copy">Copy Text</button>
</div>

<div id="copy">

<p style="font-size:12px;">
    <b>Name:</b> {$patient->first_name} {$patient->last_name}
    <br>
    <b>MRN:</b> {$patient->mrn}
    <br>
    <b>Report Date:</b> {$survey_data.green[0].second_run}
</p>

<p style="font-size:12px;">The following report was made available to the health care team.</p>

<p style="font-size:12px;">Below is an Overall Summary followed by recommendations from the Connection to Health program:</p>

<h3 style="font-size:14px;">The patient particularly needs to make changes in these areas:</h3>

<ul>
    {foreach from=$survey_data.red item=surveys name=loop}
        <li style="font-size:12px;">{translate language=$language key="{$surveys.health_area_tx_key}" text="{$surveys.friendly_name}" substitutions=""}</li>
    {foreachelse}
        <li style="font-size:12px;">No areas found.</li>
    {/foreach}
</ul>

<h3 style="font-size:14px;">The patient could consider making changes in these areas:</h3>

<ul>
    {foreach from=$survey_data.yellow item=surveys name=loop}
        <li style="font-size:12px;">{translate language=$language key="{$surveys.health_area_tx_key}" text="{$surveys.friendly_name}" substitutions=""}</li>
    {foreachelse}
        <li style="font-size:12px;">No areas found.</li>
    {/foreach}
</ul>

<h3 style="font-size:14px;">The patient is doing well in these areas:</h3>

<ul>
    {foreach from=$survey_data.green item=surveys name=loop}
        <li style="font-size:12px;">{translate language=$language key="{$surveys.health_area_tx_key}" text="{$surveys.friendly_name}" substitutions=""}</li>
    {foreachelse}
        <li style="font-size:12px;">No areas found.</li>
    {/foreach}
</ul>

<h3 style="font-size:14px;">Recommendations from the Connection to Health Program:</h3>

{foreach from=$survey_data.yellow item=surveys}
    <div style="padding:10px;border:1px solid #000;margin:-1px 0">
        <h4 style="font-size:13px;margin:0 0 5px;">{translate language=$language key="{$surveys.health_area_tx_key}" text="{$surveys.friendly_name}" substitutions=""}:</h4>
        <p style="font-size:12px;margin:5px 0 0">
            {translate language=$language key="{$surveys.text_body_tx_key}_short_tx" text="{$surveys.short_text|strip_tags}" substitutions=$surveys.user_input}
            {if $surveys.text|count_characters > 0}
                {translate language=$language key="{$surveys.text_body_tx_key|strip_tags}" text="{$surveys.text}" substitutions=$surveys.user_input}
            {/if}
        </p>
    </div>
{/foreach}

{foreach from=$survey_data.red item=surveys}
    <div style="padding:10px;border:1px solid #000;margin:-1px 0">
        <h4 style="font-size:13px;margin:0 0 5px;">{translate language=$language key="{$surveys.health_area_tx_key}" text="{$surveys.friendly_name}" substitutions=""}:</h4>
        <p style="font-size:12px;margin:5px 0 0">
            {translate language=$language key="{$surveys.text_body_tx_key}_short_tx" text="{$surveys.short_text}" substitutions=$surveys.user_input}
            {if $surveys.text|count_characters > 0}
                {translate language=$language key="{$surveys.text_body_tx_key}" text="{$surveys.text}" substitutions=$surveys.user_input}
            {/if}
        </p>
    </div>
{/foreach}

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/clipboard@1/dist/clipboard.min.js"></script>
<script>
    var clipboard = new Clipboard('.btn');
    clipboard.on('success', function(event) {
        event.clearSelection();
        var $trigger = $(event.trigger);
        $trigger.attr('disabled', true);
        if ( ! $trigger.data('copied')) {
            var text = $trigger.text();
            $trigger.data('copied', true);
            $trigger.text('Text Copied!');
            setTimeout(function() {
                $trigger
                    .data('copied', false)
                    .attr('disabled', false)
                    .text(text);
            }, 2000);
        }
    });
</script>
