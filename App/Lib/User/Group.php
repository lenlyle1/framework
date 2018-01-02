<?php

namespace Lib\User;

use \Lib\Debug\Debugger;
use \Lib\Database\DbGetter;
use \Lib\User\User;
use \Lib\Session\Session;

class Group
{
    public static function save($params)
    {
        Debugger::debug($params);

        $requiredFields = [
            'name',
            'practice_id',
            'condition'
        ];

        $sql = "INSERT INTO groups (
                    group_id,
                    practice_id,
                    description,
                    group_leader_id,
                    name
                ) VALUES (
                    :group_id,
                    :practice_id,
                    :description,
                    :group_leader_id,
                    :name
                ) ON DUPLICATE KEY UPDATE
                    name = :name,
                    description = :description,
                    group_leader_id = :group_leader_id";

        $values = [
            ':group_id' => ((!empty($params['group_id'])) ? $params['group_id'] : null),
            ':practice_id' => $params['practice_id'],
            ':description' => $params['description'],
            ':group_leader_id' => ((!empty($params['group_leader_id'])) ? $params['group_leader_id'] : null ),
            ':name' => $params['name']
        ];

        $db = DbGetter::getDb();

        $db->insertUpdate($sql, $values);

        return ['success' => true];
    }

    public static function load($practiceId, $groupId = null)
    {
        $db = DbGetter::getDb();

        $params = [];

        $sql = "SELECT g.group_id, g.name, g.description, g.group_leader_id,
                       p.practice_id, p.name AS practice_name,
                       CONCAT(up.first_name, ' ', up.last_name) as leader_name
                FROM groups AS g
                LEFT JOIN practice AS p
                    ON g.practice_id = p.practice_id
                LEFT JOIN user_profile AS up
                    ON g.group_leader_id = up.user_id ";

        if ($groupId) {
            $sql .= "WHERE group_id = ?";
            $params[] = $groupId;
        } else if (!User::can('view_all_practices', Session::get('permissions'))){
            $sql .= "WHERE g.practice_id = ?";
            $params[] = $practiceId;
        }

        $groups = $db->fetchAll($sql, $params);

        return $groups;
    }

    public static function addMember($params)
    {
        $db = DbGetter::getDb();

        $sql = "INSERT INTO user_group (
                    user_id,
                    group_id
                ) VALUES (
                    ?, ?
                )";
        $db->runQuery($sql, [$params['user_id'], $params['group_id']]);

        return ['success' => true];
    }

    public static function removeMember($userId, $groupId)
    {
        $db = DbGetter::getDb();

        $sql = "DELETE FROM user_group
                WHERE user_id =?
                AND group_id =?";

        $db->runQuery($sql, [$userId, $groupId]);
    }

    public static function loadMembers($groupId)
    {
        $db = DbGetter::getDb();

        $sql = "SELECT u.user_id, upd.mrn, up.first_name, up.last_name, upd.date_of_birth
                FROM user AS u
                LEFT JOIN user_profile AS up
                    ON u.user_id = up.user_id
                LEFT JOIN user_patient_details AS upd
                    ON u.user_id = upd.user_id
                LEFT JOIN user_group AS ug
                    ON u.user_id = ug.user_id
                WHERE ug.group_id = ?
                ORDER BY up.last_name ASC";

        return $db->fetchAll($sql, [$groupId]);
    }

    public static function addNote($userId, $groupId, $title, $text)
    {
        $db = DbGetter::getDb();

        $sql = "INSERT INTO group_note (
                    user_id, group_id, note_title, note_body
                ) VALUES (
                    ?, ?, ?, ?
                )";


        $noteId = $db->insertUpdate($sql, [$userId, $groupId, $title, $text]);

        return ['success' => ($noteId) ? true : false];

    }

    public static function deleteNote($noteId)
    {
        $db = DbGetter::getDb();

        $sql = "DELETE FROM group_note
                WHERE group_note_id = ?";

        $db->runQuery($sql, [$noteId]);

        return ['success' => true];
    }

    public static function loadNotes($groupId)
    {
        $db = DbGetter::getDb();

        $sql = "SELECT gn.*, CONCAT(up.first_name, ' ', up.last_name) AS author, u.username
                FROM group_note AS gn
                LEFT JOIN user AS u
                    ON gn.user_id = u.user_id
                LEFT JOIN user_profile AS up
                ON gn.user_id = up.user_id
                WHERE gn.group_id = ?
                ORDER BY gn.date_added DESC";

        return $db->fetchAll($sql, [$groupId]);
    }

    public static function saveMessage($params)
    {
        Debugger::debug($params);

        $db = DbGetter::getDb();

        $sql = "INSERT INTO group_message (
                    group_id,
                    user_id,
                    subject,
                    message
                ) VALUES (
                    ?, ?, ?, ?
                )";

        $messageId = $db->insertUpdate($sql, [$params['group_id'], $params['user_id'], $params['subject'], $params['message']]);

        return ['success' => ($messageId) ? true : false];
    }

    public static function loadMessages($groupId)
    {
        $db = DbGetter::getDb();

        $sql = "SELECT gm.*, CONCAT(up.first_name, ' ', up.last_name) AS posted_by
                FROM group_message AS gm
                JOIN user_profile AS up
                    USING (user_id)
                WHERE group_id = ?
                ORDER BY date_sent DESC";

        return $db->fetchAll($sql, [$groupId]);
    }

    public static function loadSurveys($groupId)
    {
        $db = DbGetter::getDb();

        // $sql = "";

        // return $db->fetchAll($sql, [$groupId]);
    }


}

