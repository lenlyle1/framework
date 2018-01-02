<?php

namespace Controllers;

use \Lib\API\UserAPI;
use \Lib\Debug\Debugger;
use \Lib\Smarty\Template;
use \Lib\Session\Session;
use \Lib\Messaging\MessageRunner;
use \Lib\User\PasswordResetConfirmToken;

class UserController extends BaseController
{
    // Update
    public function signup($router)
    {
        $userAPI = new UserAPI(null, null, true);
        $result = $userAPI->save($_POST);

        if ($result['success']) {
            MessageRunner::addMessage('flash', 'You have been signed up');
            Session::set('user_id', $result['user_id']);
            # Send them to the homepage:
            return ['type' => 'redirect',
                    'url' => '/home'];
        } else {
            Session::set('old', $_POST);
            Session::set('errors', $result['errors']);

            # Send them to the signup page:
            return ['type' => 'redirect',
                    'url' => '/user/signup'];
        }
    }

    public function update()
    {

    }

    // show reset request page
    public static function passwordResetRequestForm($router, $params)
    {
        return 'pages/forgot-password';
    }

    // submit request - mail link
    public static function submitPasswordResetRequest($router)
    {
        global $smarty;

        $info = \Lib\User\PasswordResetCreateToken::send($_POST['username']);

        Debugger::debug($info, 'INFO');
        if($info['success'] === false) {
            foreach ($info['errors'] as $error) {
                MessageRunner::addMessage('flash', $error);
            }
            //$_SESSION['old'] = $request->getParams();

            return ['type' => 'redirect',
                    'url' => '/forgot-password-form'];
        }

        $link = 'http' . ((!empty($_SERVER['HTTPS'])) ? 's' : '') . '://' .  $_SERVER['HTTP_HOST'] .
                '/reset-password?token=' . $info['token'];

        Template::assign("first_name", $info['user']->first_name);
        Template::assign("link", $link);


        $htmlBody = $smarty->fetch('pages/reset_password/reset_password_html.tpl');
        $txtBody = $smarty->fetch('pages/reset_password/reset_password_text.tpl');

        Debugger::debug('Sending email to ' . $info['user']->email_address);

        $success = \Lib\Mailer\SendMail::send(
            $info['user']->email_address,
            $info['user']->first_name . ' ' . $info['user']->last_name,
            'CTH password reset',
            $htmlBody,
            $textBody
        );

        if (!$success) {
            MessageRunner::addMessage('flash', 'There was a problem sending the email.');

            return ['type' => 'redirect',
                    'url' => '/forgot-password-form'];
        } else {
            MessageRunner::addMessage('flash', 'We have sent you an email with reset insructions.');

            return ['type' => 'redirect',
                    'url' => '/'];
        }
    }

    public static  function passwordResetForm($router)
    {
        $info = PasswordResetConfirmToken::confirm($_GET['token']);

        Debugger::debug($info);

        if ($info['success']) {
            Template::assign('confirmed', $info['success']);
            Template::assign('error', $info['error']);
            Template::assign('user_id', $info['user']->user_id);
            Template::assign('token', $_GET['token']);
            return 'pages/reset-password';
        } else {
            MessageRunner::addMessage('flash', $info['error']);

            Template::assign('token', $_GET['token']);

            return ['type' => 'redirect',
                    'url' => '/forgot-password-form'];
        }
    }

    // reset password
    public static function passwordReset($router)
    {
        Debugger::debug('Updating password');
        $info = \Lib\User\PasswordResetUpdater::update($_POST);

        Debugger::debug($info);

        if (!$info['success']) {
            MessageRunner::addMessage('flash', 'There was a problem changing your password.');
            MessageRunner::addMessage('errors', ['password' => $info['error']]);
            return ['type' => 'redirect',
                    'url' => '/reset-password'];
        } else {
            $_SESSION['user'] = $info['user_profile_id'];
            MessageRunner::addMessage('flash', 'Your password has been reset!');
            return ['type' => 'redirect',
                    'url' => '/'];
        }
    }
}
