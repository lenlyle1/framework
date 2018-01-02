<?php

namespace Lib\User\Traits;

use \Models\UserProfile as UserProfileModel;
use \Lib\Debug\Debugger;
use \Lib\Database\DbGetter;

trait UserProfileTrait
{
    public static function saveProfile($params)
    {
        Debugger::debug("SAVING USER PROFILE");

        $values = [
            ':user_profile_id' => ((!empty($params['user_profile_id'])) ? $params['user_profile_id'] : null),
            ':user_id' => $params['user_id'],
            ':practice_id' => $params['practice_id'],
            ':first_name' => $params['first_name'],
            ':last_name' => $params['last_name'],
            ':home_phone' => preg_replace('/[^0-9]/', '', $params['home_phone']),
            ':mobile_phone' => preg_replace('/[^0-9]/', '', $params['mobile_phone']),
            ':is_coach' => ((!empty($params['is_coach'])) ? 1 : 0),
            ':is_provider' => ((!empty($params['is_provider'])) ? 1 : 0)
        ];

        $sql = "INSERT INTO user_profile (
                    user_profile_id,
                    user_id,
                    first_name,
                    last_name,
                    home_phone,
                    mobile_phone,
                    is_coach,
                    is_provider,
                    practice_id
                ) VALUES (
                    :user_profile_id,
                    :user_id,
                    :first_name,
                    :last_name,
                    :home_phone,
                    :mobile_phone,
                    :is_coach,
                    :is_provider,
                    :practice_id
                ) ON DUPLICATE KEY UPDATE
                    first_name = :first_name,
                    last_name = :last_name,
                    home_phone = :home_phone,
                    mobile_phone = :mobile_phone,
                    is_coach = :is_coach,
                    is_provider = :is_provider,
                    practice_id = :practice_id";


        $db = DbGetter::getDb();

        $db->insertupdate($sql, $values);

        return ['success' => true];
    }
}