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
            ':user_id' => $params['user_id'],
            ':first_name' => $params['first_name'],
            ':last_name' => $params['last_name'],
            ':home_phone' => preg_replace('/[^0-9]/', '', $params['home_phone']),
            ':mobile_phone' => preg_replace('/[^0-9]/', '', $params['mobile_phone']),
            ':gender_abbr' => $params['gender']
        ];

        $sql = "INSERT INTO user_profile (
                    user_id,
                    first_name,
                    last_name,
                    home_phone,
                    mobile_phone,
                    gender_id
                ) VALUES (
                    :user_id,
                    :first_name,
                    :last_name,
                    :home_phone,
                    :mobile_phone,
                    (SELECT gender.gender_id
                    WHERE gender.abbr = :gender_abbr)
                ) ON DUPLICATE KEY UPDATE
                    first_name = :first_name,
                    last_name = :last_name,
                    home_phone = :home_phone,
                    mobile_phone = :mobile_phone,
                    SELECT gender.gender_id
                    WHERE gender.abbr = :gender_abbr ";


        $db = DbGetter::getDb();

        $db->insertupdate($sql, $values);

        return ['success' => true];
    }
}