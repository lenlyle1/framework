<?php

$router->add('GET', '/health-tips/[t:location]?/[**:page]?', 'HealthTipsController:healthTips', 'health-tips-page');
