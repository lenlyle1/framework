{% set alerts = ['success', 'info', 'warning', 'danger'] %}

<div class="flash-text">
    {% for alert in alerts %}
        {% if flash.getMessage(alert) %}
            {% for message in flash.getMessage(alert) %}
                <p>{{ message | raw }}</p>
            {% endfor %}
        {% endif %}
    {% endfor %}
</div>
