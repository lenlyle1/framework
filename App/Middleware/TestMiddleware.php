<?php

namespace App\Middleware;

use \Lib\Session\Session;
use \Lib\Debug\Debugger;
use \Lib\Messaging\MessageRunner;

class TestMiddleware extends Middleware
{
    public static function run()
    {
        Debugger::debug('in test middleware');

    }
}