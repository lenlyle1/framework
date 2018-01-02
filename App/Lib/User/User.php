<?php

namespace Lib\User;

use \Lib\Debug\Debugger;
use \Models\User as UserModel;
use \Models\UserProfile as UserProfileModel;
use \Models\UserPatientDetails as UserPatientDetailsModel;
use \Models\UserRole as UserRoleModel;
use \Lib\Database\DbGetter;// use \Models\UserContactInformation;
use \Lib\Validation\UserValidation;
use \Lib\Messaging\MessageRunner;
use \Lib\Session\Session;


class User
{

    use Traits\UserProfileTrait;
    use Traits\UserPatientDetailsTrait;

    public static function save($params)
    {
        $requiredFields = [
            'user' => [
                'user_role',
                // 'email_address',
                // 'username',
                'time_zone'
            ],
            'profile' => [
                'first_name',
                'last_name',
                // 'home_phone',
                // 'mobile_phone'
            ],
            'patient' => [
                'date_of_birth',
                'gender_id',
                'mrn'
            ]
        ];

        // if (empty($params['user_id']) && empty($params['import'])) {
        //     $requiredFields['user'][] = 'password';
        //     $requiredFields['user'][] = 'confirm_password';
        // }

        if ($params['user_role'] != 'superadmin' && $params['user_role'] != 'cth administrator' && $params['user_role'] != 'cth groupleader') {
            $requiredFields['profile'][] = 'practice_id';
        }

        // if($params['user_role'] == 'patient'){
        //     $requiredFields['profile'][] = 'height_feet';
        //     $requiredFields['profile'][] = 'height_inches';
        // }

        $db = DbGetter::getDB();


        Debugger::debug($params, 'User params');
        // Validate submitted fields
        $validator = new UserValidation();
        $validationResult = $validator->validate($params, $requiredFields);

        if (!$validationResult['success']) {
            Debugger::debug($validationResult, 'User validation result');
            return $validationResult;
        }

        $params['user_id'] = UserSaver::saveUser($params);


        // save role
        self::saveUserRole($params['user_id'], $params['user_role']);

        // create profile when we have more info about requirements

        if($params['user_role'] != 'superadmin'){
            self::saveProfile($params);
        }

        if($params['user_role'] == 'patient'){
            Debugger::debug('Saving patient details');
            self::savePatientDetails($params);
        }

        if($params['coach']) {
            self::saveCoachProvider($params['user_id'], $params['coach'], 'coach');
        }
        if($params['provider']) {
            self::saveCoachProvider($params['user_id'], $params['provider'], 'provider');
        }

        return ['success' => true, 'user_id' => $params['user_id']];
    }

    public static function saveUserRole($userId, $role)
    {
        Debugger::debug('Saving user role');
        $db = DbGetter::getDb();

        $sql = "INSERT IGNORE INTO user_role (
                    user_id, role_id
                ) VALUES (
                    ?, (SELECT role_id
                        FROM role
                        WHERE role_name = ?)
                ) ";

        Debugger::debug($sql);
        Debugger::debug([$userId, $role]);
        $db->insertUpdate($sql, [$userId, $role]);
    }

    public static function saveCoachProvider($userId, $coachProviderId, $type)
    {
        Debugger::debug($coachProviderId, 'Setting user as ' . $type);

        $db = DbGetter::getDb();

        $sql = "INSERT INTO user_coach_provider (
                    user_id, coach_provider_id, type
                ) VALUES (
                    ?, ?, ?
                )";

        $params = [$userId, $coachProviderId, $type];

        $db->insertUpdate($sql, $params);
    }

    public static function load($user, $userId = null, $userRole = null, $email = null, $username = null)
    {
        $sql = "SELECT u.user_id as user_id, u.password, u.username, u.email_address, u.time_zone_id,
                       up.first_name, up.last_name, up.home_phone, up.mobile_phone,
                       up.user_profile_id, up.is_coach, up.is_provider,
                       upd.date_of_birth, upd.mrn, upd.height, upd.weight,
                       g.gender_id, g.gender,
                       r.role_name, r.role_id,
                       p.practice_id, p.name as practice_name, cl.condition_name,
                       l.*
                FROM user AS u
                LEFT JOIN user_profile AS up
                    ON u.user_id = up.user_id
                LEFT JOIN user_patient_details AS upd
                    ON u.user_id = upd.user_id
                LEFT JOIN gender AS g
                    ON upd.gender_id = g.gender_id
                LEFT JOIN user_role AS ur
                    ON u.user_id = ur.user_id
                LEFT JOIN role AS r
                    ON ur.role_id = r.role_id
                LEFT JOIN practice as p
                    ON p.practice_id = up.practice_id
                LEFT JOIN language AS l
                    ON l.language_id = upd.language
                LEFT JOIN condition_lookup AS cl
                    ON p.practice_condition = cl.condition_lookup_id ";


        if ($userId) {
            $sql .= "WHERE u.user_id = ? ";
            $params = [$userId];
            $method = 'fetchOne';
        } else if (!empty($user->practice_id)) {
            $sql .= "WHERE up.practice_id = ?";
            $params = [$user->practice_id];

            if ($userRole) {

                $sql .= "AND r.role_name = ?";
                $params[] = $userRole;
            }

            $method = 'fetchAll';
        } else if($email) {
            $sql .="WHERE u.email_address = ? ";
            $params = [$email];
            $method = 'fetchOne';
        } else if($username) {
            $sql .="WHERE u.username = ? ";
            $params = [$username];
            $method = 'fetchOne';
        } else {
            $sql .= "WHERE r.role_name = ?";

            //$sql .= "LIMIT " . $start . ", " . $size;
            $params = [$userRole];
            $method = 'fetchAll';
        }

        $db = DbGetter::getDb();
        $result = $db->$method($sql, $params);

        Debugger::debug($result);

        if($result) {
            if ($userId || $email || $username){
                $result->date_of_birth = date('m/d/Y', strtotime($result->date_of_birth));
                $result->hasPassword = ($result->password == '') ? false : true;
            } else {
                foreach($result as $id => $user) {
                    $result[$id]->height_feet = floor($user->height / 12);
                    $result[$id]->height_inches = $user->height % 12;
                    if(!empty($user->date_of_birth)) {
                        $result[$id]->date_of_birth = date('m/d/Y', strtotime($user->date_of_birth));
                    }
                }
            }

            unset($result->password);

            return [
                'success' => true,
                'payload' => $result
            ];
        } else {
            return [
                'success' => false,
                'errors' => ['That username could not be found']
            ];
        }

    }

    public static function loadPatients($practiceId = null)
    {
        $sql = "SELECT u.user_id as user_id, u.username, u.email_address, u.time_zone_id, u.unique_identifier, u.test_user,
                       up.first_name, up.last_name, up.home_phone, up.mobile_phone,
                       up.is_coach, up.is_provider,
                       upd.date_of_birth, upd.mrn, upd.height, upd.weight,
                       g.gender_id, g.gender,
                       r.role_name, r.role_id,
                       p.practice_id, p.name as practice_name, cl.condition_name,
                       l.*,
                       info.action_plan_date,
                       info.action_plan_id,
                       info.evaluation_id,
                       info.evaluation_date,
                       info.followup_date
                FROM user AS u
                LEFT JOIN user_profile AS up
                    ON u.user_id = up.user_id
                LEFT JOIN user_patient_details AS upd
                    ON u.user_id = upd.user_id
                LEFT JOIN gender AS g
                    ON upd.gender_id = g.gender_id
                LEFT JOIN user_role AS ur
                    ON u.user_id = ur.user_id
                LEFT JOIN role AS r
                    ON ur.role_id = r.role_id
                LEFT JOIN practice as p
                    ON p.practice_id = up.practice_id
                LEFT JOIN language AS l
                    ON l.language_id = upd.language
                LEFT JOIN condition_lookup AS cl
                    ON p.practice_condition = cl.condition_lookup_id
                LEFT JOIN (
                    SELECT
                    user_id,
                    action_plan_date,
                    action_plan_id,
                    evaluation_id,
                    evaluation_date,
                    followup_date
                FROM
                (
                    SELECT
                        user_id,
                        max(date(created_at)) action_plan_date,
                        max(batch_id)  action_plan_id
                    FROM
                        action_plan
                    group by
                       1
                ) AS x
                LEFT JOIN
                (
                    SELECT
                        user_evaluation.user_id,
                        max(batch_id) evaluation_id,
                        max(date(created_at)) evaluation_date
                    FROM
                        user_evaluation
                        JOIN goal_lookup ON (goal_id = evaluation_id)
                    group by 1
                ) AS y using (user_id)
                left JOIN
                (
                    SELECT
                        user_id,
                        max(date(followup_date)) as followup_date
                    FROM
                        followup
                    group by 1
                ) AS z using (user_id)
                                ) AS info on (u.user_id = info.user_id)
                WHERE r.role_name = 'Patient' ";

        if($practiceId) {
            $sql .= "AND up.practice_id = ?";
            $params = [$practiceId];
        }

        $db = DbGetter::getDb();
        $result = $db->fetchAll($sql, $params);

        //Debugger::debug($result);

        return ['success' => true, 'payload' => $result];
    }


    public static function loadPatient($userId)
    {
        $sql = "SELECT u.user_id as user_id, u.username, u.email_address, u.time_zone_id, u.unique_identifier, u.test_user,
                       up.user_profile_id, up.first_name, up.last_name, up.home_phone, up.mobile_phone,
                       up.is_coach, up.is_provider,
                       upd.user_patient_details_id, upd.date_of_birth, upd.mrn, upd.type_2_dm, upd.height,
                       g.gender_id, g.gender,
                       r.role_name, r.role_id,
                       p.practice_id, p.name as practice_name, cl.condition_name,
                       l.*
                FROM user AS u
                LEFT JOIN user_profile AS up
                    ON u.user_id = up.user_id
                LEFT JOIN user_patient_details AS upd
                    ON u.user_id = upd.user_id
                LEFT JOIN gender AS g
                    ON upd.gender_id = g.gender_id
                LEFT JOIN user_role AS ur
                    ON u.user_id = ur.user_id
                LEFT JOIN role AS r
                    ON ur.role_id = r.role_id
                LEFT JOIN practice as p
                    ON p.practice_id = up.practice_id
                LEFT JOIN language AS l
                    ON l.language_id = upd.language
                LEFT JOIN condition_lookup AS cl
                    ON p.practice_condition = cl.condition_lookup_id
                WHERE u.user_id = ? ";

        $params = [$userId];

        $db = DbGetter::getDb();
        $patient = $db->fetchOne($sql, $params);

        $patient->coach_providers = self::loadUserCoachProvider($userId);

        if($patient->unique_identifier == ''){
            $uniq = false;
            $userModel = new UserModel();
            $str = substr(md5($patient->user_id), 1, 8);

            while(!$uniq) {
                if(!$userModel->getOne('unique_identifier', $str)){
                    $uniq = true;
                    $sql = "UPDATE user
                            SET unique_identifier = ?
                            WHERE user_id = ?";

                    $db->runQuery($sql, [$str, $patient->user_id]);

                    break;
                }

                $str = substr(md5($patient->user_id . chr(rand(65,90)) . chr(rand(65,90))), 1, 8);
            }

        }

        Debugger::debug($patient);

        return $patient;
    }


    public static function loadUserCoachProvider($userId)
    {
        $db = DbGetter::getDb();

        $sql = "SELECT uc.coach_provider_id, uc.type, up.first_name, up.last_name
                FROM user_coach_provider AS uc
                LEFT JOIN user_profile AS up
                    ON up.user_id = uc.coach_provider_id
                WHERE uc.user_id = ?";

        $result = $db->fetchAll($sql, [$userId]);

        Debugger::debug($result);
        $response = ['coaches' => [], 'providers' => []];

        foreach($result as $coachProviderUser) {
            if ($coachProviderUser->type == 'coach') {
                $response['coaches'][] = $coachProviderUser;
            }
            if ($coachProviderUser->type == 'provider') {
                $response['providers'][] = $coachProviderUser;
            }
        }

        return $response;
    }


    public static function loadAllCoachPract($user_id = null)
    {
        $db = DbGetter::getDb();

        $sql = "SELECT user_id,
                    concat(first_name,' ', last_name) user_name
                from
                    user_profile
                WHERE
                    practice_id = (select practice_id from user_profile where user_id = ?) AND
                    (is_coach = 1 OR is_provider = 1)";

        return $db->fetchAll($sql, [$user_id]);
    }

    public static function loadCoaches($practiceId)
    {
        $db = DbGetter::getDb();

        $sql = "SELECT user_id, first_name, last_name
                FROM user_profile
                WHERE is_coach = 1
                AND practice_id = ?";

        return $db->fetchAll($sql, [$practiceId]);
    }

    public static function loadProviders($practiceId)
    {
        $db = DbGetter::getDb();

        $sql = "SELECT user_id, first_name, last_name
                FROM user_profile
                WHERE is_provider = 1
                AND practice_id = ?";

        return $db->fetchAll($sql, [$practiceId]);
    }

    public static function deleteCoach($userId, $coachId, $type)
    {
        $db = DbGetter::getDb();

        $sql = "DELETE FROM user_coach_provider
                WHERE user_id = ?
                AND coach_provider_id = ?
                AND type= ?";

        $db->runQuery($sql, [$userId, $coachId, $type]);

        return ['success' => true];
    }

    public static function loadStaff($practiceId = null)
    {
        $db = DbGetter::getDb();

        $roles = ['Practice Staff', 'Research Staff', 'Practice Admin'];
        $user = Session::get('user');

        if ($user->role_name == 'Superadmin'){
            $roles = array_merge($roles, ['Superadmin', 'CTH Administrator', 'CTH Groupleader']);
        } else if ($user->role_name == 'CTH Administrator'){
            $roles = array_merge($roles, ['CTH Administrator', 'CTH Groupleader']);
        } else if ($user->role_name == 'CTH Groupleader'){
            $roles = array_merge($roles, ['CTH Groupleader']);
        }

        //if()
        Debugger::debug(Session::get('user'));

        $sql = "SELECT u.username, u.user_id, u.email_address, u.time_zone_id,
                       up.first_name, up.last_name, up.is_coach, up.is_provider,
                       r.role_name, p.name as practice_name, p.practice_id, l.leader_count
                FROM user AS u
                LEFT JOIN user_profile AS up
                    ON u.user_id = up.user_id
                LEFT JOIN user_role AS ur
                    ON u.user_id = ur.user_id
                LEFT JOIN role AS r
                    ON ur.role_id = r.role_id
                LEFT JOIN practice AS p
                    ON up.practice_id = p.practice_id
                LEFT JOIN (SELECT group_leader_id, count(g.group_leader_id) AS leader_count
                    FROM groups AS g
                    GROUP BY g.group_leader_id
                ) AS l
                    ON l.group_leader_id = u.user_id
                WHERE r.role_name IN ('" . implode("','", $roles) . "') ";

        if ($practiceId) {
            $sql .= "AND up.practice_id = ?";
            $params[] = $practiceId;
        }

        return $db->fetchAll($sql, $params);
    }

    public static function loadStaffUser($userId)
    {
        $sql = "SELECT u.user_id as user_id, u.username, u.email_address, u.time_zone_id,
                       up.first_name, up.last_name, up.home_phone, up.mobile_phone,
                       up.is_coach, up.is_provider,
                       upd.date_of_birth, upd.mrn, upd.height, upd.weight,
                       g.gender_id, g.gender,
                       r.role_name, r.role_id,
                       p.practice_id, p.name as practice_name, cl.condition_name
                FROM user AS u
                LEFT JOIN user_profile AS up
                    ON u.user_id = up.user_id
                LEFT JOIN user_patient_details AS upd
                    ON u.user_id = upd.user_id
                LEFT JOIN gender AS g
                    ON upd.gender_id = g.gender_id
                LEFT JOIN user_role AS ur
                    ON u.user_id = ur.user_id
                LEFT JOIN role AS r
                    ON ur.role_id = r.role_id
                LEFT JOIN practice as p
                    ON p.practice_id = up.practice_id
                LEFT JOIN condition_lookup AS cl
                    ON p.practice_condition = cl.condition_lookup_id
                WHERE u.user_id = ? ";

        $params = [$userId];

        $db = DbGetter::getDb();
        $patient = $db->fetchOne($sql, $params);

        Debugger::debug($result);

        return $patient;
    }

    public static function updatePassword($user, $username = null, $password = null, $confirmPassword = null)
    {
        if ($password != $confirmPassword) {
            MessageRunner::addMessage('error', 'Confirm password does not match');
            return false;
        }

        $db = DbGetter::getDb();

        $params = [
            ':user_id' => $user->user_id
        ];

        $sql = "UPDATE user SET ";

        if($username) {
            $validation = new \Lib\Validation\UserValidation();
            // check username not already in db
            if ($validation->fieldInDb('User', 'username', $username)) {
                $validation->setError('username', 'Username already subscribed');
                MessageRunner::addMessage('error', ['username' => 'Username already subscribed']);
                return false;
            }
            $sql .= "username = :username" . (($password) ? ', ' : ' ');
            $params[':username'] = $username;
        }
        if($password){
            $sql .= "password = :password ";
            $params[':password'] = password_hash($password, PASSWORD_DEFAULT);
        }

        $sql .= "WHERE user_id = :user_id";

        $db->insertUpdate($sql, $params);

        $_SESSION['user']->username = $username;
        $_SESSION['user']->hasPassword = true;
        return true;
    }

    public static function can($task, $permissions = null)
    {
        //return false;

        if (is_array($permissions)) {
            return in_array($task, $permissions);
        }

        return false;
    }
}