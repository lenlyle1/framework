{assign var=messageTypes value=['success', 'info', 'warning', 'error']}

<div class="flash-text">
    {foreach $messages as $type => $messageList}
        {foreach $messageList as $message}
            <div class="{$type}-message message">{$message}</div>
        {/foreach}
    {/foreach}
</div>
