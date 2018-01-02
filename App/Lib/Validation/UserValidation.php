<?php

namespace Lib\Validation;

use \Lib\Debug\Debugger;
use \Models\User as UserModel;
use \Lib\Database\DbGetter;

class UserValidation extends Validation
{
    public function validate($params, $requiredFields = null)
    {
        $this->validateUser($params, $requiredFields['user']);

        Debugger::debug($requiredFields);
        Debugger::debug($this->errors);

        if($params['user_role'] != 'superadmin' && $params['user_role'] != 'translator'){
            $this->validateProfile($params, $requiredFields['profile']);
        }

        // Debugger::debug($this->errors);

        if($params['user_role'] == 'patient'){
            $this->validatePatient($params, $requiredFields['patient']);
        }

        // Debugger::debug($this->errors);

        return $this->processResult();
    }

    public function validateUser($params, $requiredFields = null)
    {
        Debugger::debug($requiredFields);
        $this->checkRequired($requiredFields, $params);

        if (!empty($params['user_id'])) {
            $userModel = new UserModel();
            $user = $userModel->getOne('user_id', $params['user_id']);
        }

        $req = [
            'check_username' => true,
            'check_email' => true,
            'check_password' => true,
        ];

        if (!empty($user)) {
            if($params['username'] == $user->username) {
                $req['check_username'] = false;
            }
            if ($params['email_address'] == $user->email_address) {
                $req['check_email'] = false;
            }
            if (empty($params['password'])) {
                $req['check_password'] = false;
            }
        }

        if(empty($params['username'])){
            $req['check_username'] = false;
        }

        if(empty($params['email_address'])){
            $req['check_email'] = false;
        }

        if(empty($params['password'])){
            $req['check_password'] = false;
        }

        Debugger::debug($user);
        Debugger::debug($params);

        if($req['check_username'] && $params['username'] != ''){
            // check username not subscribed
            if ($this->fieldInDb('User', 'username', $params['username'])) {
                $this->setError('username', 'Username already subscribed');
            }
        }

        if($req['check_email'] && $params['username'] != '') {
            // check email valid and not subscribed
            Debugger::debug('checking email');
            if($params['email_address'] != ''){
                if ($this->testEmail($params['email_address'])){
                    $this->errors['email_address'][] = 'Invalid Email Address';
                }
                // if ($this->fieldInDb('User', 'email_address', $params['email_address'])) {
                //     $this->errors['email_address'][] = 'Email already subscribed';
                // }
                if ($params['email_address'] != $params['confirm_email'] && empty($params['import'])) {
                    $this->errors['confirm_email'][] = 'Email addresses do not match';
                }
            }
        }

        if ($req['check_password']) {
            if ($params['password'] != $params['confirm_password']) {
                $this->setError('confirm_password', 'Passwords do not match');
            }
        }

        if(!empty($params['practice'])){
            // check practice is valid

            $db = DbGetter::getDB();

            $sql = "SELECT practice_id FROM practice WHERE name = ?";
            $result = $db->fetchOne($sql, [$params['practice']]);
            if(empty($result)){
                $this->setError('practice', 'Invalid practice');
            } else {
                $params['practice_id'] = $result->practice_id;
            }
        }

    }

    public function validateProfile(&$params, $requiredFields = null)
    {
        $db = DbGetter::getDB();

        $this->checkRequired($requiredFields, $params);

        if(!empty($params['import'])){
            $sql = "SELECT mrn, first_name, last_name
                    FROM user_patient_details AS upd
                    JOIN user_profile AS up
                        ON upd.user_id = up.user_id
                    WHERE mrn = ?";

            $userProfile = $db->fetchOne($sql, [$params['mrn']]);

            if($userProfile) {
                Debugger::debug($params, '', false, 'sqllog');
                Debugger::debug($userProfile, 'found user', false, 'sqllog');
                if(strtolower($userProfile->first_name) == strtolower($params['first_name']) && strtolower($userProfile->last_name) == strtolower($params['last_name'])) {
                    $this->setError('mrn', 'User already in system');
                }
            }
        }
    }

    public function validatePatient($params, $requiredFields = null)
    {
        $this->checkRequired($requiredFields, $params);
        if($this->errors['height_feet'] || $this->errors['height_inches']) {
            $this->setError('height', 'Height is required');
            unset($this->errors['height_feet']);
            unset($this->errors['height_inches']);
        }

        // check date is valid
        if(!$this->checkIsAValidDate($params['date_of_birth'])){
            $this->setError('date_of_birth', 'Not a valid date');
        }

    }

    function checkIsAValidDate($myDateString){
        return (bool)strtotime($myDateString);
    }
}