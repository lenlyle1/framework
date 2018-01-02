<?php

namespace Lib\User;

use \Lib\Debug\Debugger;
use \Lib\Database\DbGetter;
use \Lib\Validation\PracticeValidation;

class Practice
{
    public static function save($params)
    {
        Debugger::debug($params);

        $sql = "INSERT INTO practice (
                   practice_id,
                   name,
                   abbreviation,
                   practice_condition
                ) VALUES (
                    :practice_id,
                    :name,
                    :abbreviation,
                    :condition_id
                ) ON DUPLICATE KEY UPDATE
                    name = :name,
                    abbreviation = :abbreviation,
                    practice_condition = :condition_id";

        $values = [
            ':practice_id' => (($params['practice_id']) ? $params['practice_id'] : null),
            ':name' => $params['name'],
            ':abbreviation' => $params['abbreviation'],
            ':condition_id' =>$params['condition']
        ];

        $db = DbGetter::getDb();

        $db->insertUpdate($sql, $values);

        return ['success' => true];
    }

    public static function load()
    {
        $db = DbGetter::getDb();

        $sql = "SELECT p.*, cl.condition_name
                FROM practice AS p
                LEFT JOIN condition_lookup AS cl
                    ON p.practice_condition = cl.condition_lookup_id
                ORDER BY p.name ASC";

        $practices = $db->fetchAll($sql);

        return $practices;
    }

    public static function loadUsers($practiceId)
    {
        $db = DbGetter::getDb();

        $sql = "SELECT user_id, first_name, last_name
                FROM user_details
                WHERE practice_id = ?";

        return $db->fetchAll($sql, [$practiceId]);
    }

}

