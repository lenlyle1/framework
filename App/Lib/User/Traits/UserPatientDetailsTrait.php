<?php

namespace Lib\User\Traits;

use \Lib\Debug\Debugger;
use \Lib\Database\DbGetter;

trait UserPatientDetailsTrait
{
    public static function savePatientDetails($params)
    {
        Debugger::debug("SAVING PATIENT DETAILS");

        $db = DbGetter::getDb();

        $dob = new \DateTime($params['date_of_birth']);

        $values = [
            'user_patient_details_id' => ((!empty($params['user_patient_details_id'])) ? $params['user_patient_details_id'] : null),
            'user_id' => $params['user_id'],
            'mrn' => $params['mrn'],
            'gender_id' => $params['gender_id'],
            'height' => ($params['height_feet'] * 12) + $params['height_inches'],
            'type_2_dm' => ((isset($params['type_2_dm'])) ? 1 : 0),
            'language' => ((!empty($params['language'])) ? $params['language'] : 1),
            'date_of_birth' => $dob->format('Y-m-d')
        ];

        // don't use the ORM!
        $sql = "INSERT INTO user_patient_details (
                    user_patient_details_id,
                    user_id,
                    mrn,
                    gender_id,
                    height,
                    type_2_dm,
                    language,
                    date_of_birth
                ) VALUES (
                    :user_patient_details_id,
                    :user_id,
                    :mrn,
                    :gender_id,
                    :height,
                    :type_2_dm,
                    :language,
                    :date_of_birth
                ) ON DUPLICATE KEY UPDATE
                    mrn = :mrn,
                    gender_id = :gender_id,
                    height = :height,
                    type_2_dm = :type_2_dm,
                    language = :language,
                    date_of_birth = :date_of_birth";

        $db->insertUpdate($sql, $values);

    }
}