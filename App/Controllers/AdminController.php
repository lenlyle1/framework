<?php

namespace Controllers;

use \Lib\Messaging\MessageRunner;
use \Lib\Debug\Debugger;
use \Lib\Session\Session;
use \Lib\Smarty\Template;
use \Lib\User\User;
use \Lib\API\RolesAPI;
use \Lib\API\UserAPI;
use \Lib\API\PracticeAPI;
use \Lib\User\Group;
use \Models\Gender;
use \Models\provider;
use \Models\Practice as PracticeModel;
use \Lib\User\Practice;
use \Models\ConditionLookup;
use \Lib\User\UserRole\Roles;
use \Lib\User\UserRole\Permissions;
use \Lib\Survey\ActionPlan;
use \Lib\Translate\Language;
use \Lib\Survey\Quizling;
use \Lib\Activities\Activities;
use \Lib\Followups\Followups;

class AdminController extends BaseController
{
    public static function siteSetup($router)
    {
        \Lib\Utils\Site::setup();

        return 'admin/pages/setup';
    }

    public static function home($router)
    {
        return 'admin/pages/home';
    }

    public static function login($router)
    {
        return 'admin/pages/login';
    }

    public static function dashboard($router)
    {
        // load follow ups
        $pendingFollowups = Followups::fetchFollowupsForStaff(Session::get('user'));
        // overdue follow ups
        $overdueFollowups = Followups::fetchFollowupsForStaff(Session::get('user'), 'overdue');

        Debugger::debug($pendingFollowups, 'PENDING');
        // Load patients who have not done or scheduled an action plan for 6 months
        $patients = Activities::getOverduePatients(Session::get('user'));

        $coach_providers = [];
        foreach(array_merge(User::loadCoaches(Session::get('user')->practice_id), User::loadProviders(Session::get('user')->practice_id)) as $value) {
            $coach_providers[$value->user_id] = $value->first_name.' '.$value->last_name;
        }
        Template::assign('coach_providers', $coach_providers);
        Template::assign('overdue_patients', $patients);
        Template::assign('pending_followups', $pendingFollowups);
        Template::assign('overdue_followups', $overdueFollowups);
        Template::assign('followupOutcomes', Followups::loadFollowupOutcomesList());
        Template::assign('followupNextSteps', Followups::loadFollowupNextStepsList());

        Debugger::debug($patients, 'PATIENTS');

        return 'admin/pages/dashboard';
    }

    public static function listUsers($router)
    {
        Debugger::debug($_SESSION);
        // load roles
        Template::assign('roles', Roles::load());
        // load genders
        $genderModel = new Gender();
        Template::assign('genders', $genderModel->getAll());
        // load coaches
        Template::assign('coaches', User::loadCoaches(Session::get('user')->practice_id));
        // load providers
        Template::assign('providers', User::loadProviders(Session::get('user')->practice_id));
        // load practices
        $practiceAPI = new PracticeAPI(null, null, true);
        // Debugger::debug($practiceAPI->load());
        Template::assign('practices', $practiceAPI->load());

        // load users
        // $userAPI = new UserAPI(null, null, true);
        // Debugger::debug(Session::get('user')->practice_id);
        // Template::assign('users', $userAPI->load(Session::get('user'), null)['payload']);
        Template::assign('users', User::loadPatients(Session::get('user')->practice_id));

        Debugger::debug(User::loadPatients(Session::get('user')->practice_id));
        return 'admin/pages/user_list';
    }

    public static function viewStaffUser($router, $params)
    {
        Template::assign('user', User::loadStaffUser($params['user_id']));

        // load genders
        $genderModel = new Gender();
        Template::assign('genders', $genderModel->getAll());
        // load coaches
        Template::assign('coaches', User::loadCoaches(Session::get('user')->practice_id));
        // load providers
        Template::assign('providers', User::loadProviders(Session::get('user')->practice_id));
        return 'admin/pages/user_staff';
    }

    public static function viewPatientUser($router, $params)
    {
        $patient = User::loadPatient($params['user_id']);
        $patient->height_feet = floor($patient->height / 12);
        $patient->height_inches = $patient->height % 12;
        Template::assign('patient', $patient);
        // load genders
        $genderModel = new Gender();
        Template::assign('genders', $genderModel->getAll());

        // load coaches
        $userCoachProviders = User::loadUserCoachProvider($params['user_id']);

        $coaches = User::loadCoaches(Session::get('user')->practice_id);
        foreach($coaches as $id => $coach) {
            foreach($userCoachProviders['coaches'] as $userCoach) {
                if($coach->user_id == $userCoach->coach_provider_id) {
                    unset($coaches[$id]);
                }
            }
        }


        $coach_providers = [];
        foreach(array_merge(User::loadCoaches(Session::get('user')->practice_id), User::loadProviders(Session::get('user')->practice_id)) as $value) {
            $coach_providers[$value->user_id] = $value->first_name.' '.$value->last_name;
        }
        Template::assign('coach_providers', $coach_providers);
        Template::assign('coaches', $coaches);
        Template::assign('userCoaches', $userCoachProviders);
        Debugger::debug($coaches, 'coaches');
        Debugger::debug($userCoachProviders, 'userCoaches');

        // load providers
        $providers = User::loadProviders(Session::get('user')->practice_id);
        foreach($providers as $id => $provider) {
            foreach($userCoachProviders['providers'] as $userProvider) {
                if($provider->user_id == $userProvider->coach_provider_id) {
                    unset($providers[$id]);
                }
            }
        }
        Template::assign('providers', $providers);
        Template::assign('userProviders', $userProviders);
        Debugger::debug($providers, '$providers');

        // load languages
        Template::assign('languages', Language::loadLanguages());


        Template::assign('action_plans', ActionPlan::fetchActionPlans($params['user_id']));


        // load follow ups
        $pendingFollowups = Followups::fetchFollowupsForStaff(Session::get('user'), null, $params['user_id']);
        // overdue follow ups
        $overdueFollowups = Followups::fetchFollowupsForStaff(Session::get('user'), 'overdue', $params['user_id']);

        Debugger::debug($pendingFollowups, 'PENDING');
        Template::assign('pending_followups', $pendingFollowups);
        Template::assign('overdue_followups', $overdueFollowups);
        //Template::assign('followups', Activities::fetchFollowup($params['user_id']));

        Template::assign('motivation_prompts', Activities::fetchMotivation($params['user_id']));
        Template::assign('followupOutcomes', Followups::loadFollowupOutcomesList());
        Template::assign('followupNextSteps', Followups::loadFollowupNextStepsList());
        $quizling = new Quizling($patient);
        Template::assign('surveys', $quizling->fetchSurveyList());

        return 'admin/pages/user_patient';
    }

    public static function loadMotivationPrompt($router, $params)
    {

    }

    public static function listPatients($router)
    {
        Template::assign('userType', 'patients');
        // load roles
        Template::assign('roles', Roles::load());
        // load genders
        $genderModel = new Gender();
        Template::assign('genders', $genderModel->getAll());
        // load coaches
        Template::assign('coaches', User::loadCoaches(Session::get('user')->practice_id));
        // load providers
        Template::assign('providers', User::loadProviders(Session::get('user')->practice_id));
        // load practices
        $practiceAPI = new PracticeAPI(null, null, true);
        // Debugger::debug($practiceAPI->load());
        Template::assign('practices', $practiceAPI->load());
        // load languages
        Template::assign('languages', Language::loadLanguages());

        // load users
        $userAPI = new UserAPI(null, null, true);



        //Template::assign('users', $userAPI->load(Session::get('user'), null, 'Patient')['payload']);


        Template::assign('users', User::loadPatients(Session::get('user')->practice_id)['payload']);

        //Debugger::debug(User::loadPatients(Session::get('user')->practice_id)['payload']);

        return 'admin/pages/user_list';
    }

    public static function loginAs($router, $params)
    {
        // log out current user
        \Lib\Auth\Auth::signout();

        // login in selected patient
        $user = \Lib\User\User::load(null, $params['user_id'])['payload'];

        Debugger::debug($user);

        session_start();
        Session::set('logged_in', true);
        Session::set('user', $user);
        Session::set('permissions', Permissions::loadUserPermissions($user));

        // return success and let js handle redirect
        echo json_encode(['success' => true]);

        exit;
    }

    public static function listStaff($router)
    {
        Template::assign('userType', 'staff');

        // load roles
        Template::assign('roles', Roles::load());
        // load genders
        $genderModel = new Gender();
        Template::assign('genders', $genderModel->getAll());
        // load coaches
        Template::assign('coaches', User::loadCoaches(Session::get('user')->practice_id));
        // load providers
        Template::assign('providers', User::loadProviders(Session::get('user')->practice_id));
        // load practices
        $practiceAPI = new PracticeAPI(null, null, true);
        // Debugger::debug($practiceAPI->load());
        Template::assign('practices', $practiceAPI->load());

        // load users
        $userAPI = new UserAPI(null, null, true);
        Debugger::debug(Session::get('user')->practice_id);
        Template::assign('users', User::loadStaff(Session::get('user')->practice_id));

        return 'admin/pages/user_list';
    }

    public static function listPractices($router)
    {
        $practiceAPI = new PracticeAPI(null, null, true);
        Template::assign('practices', $practiceAPI->load());

        $conditionLookup = new ConditionLookup();
        Template::assign('conditions', $conditionLookup->getAll());

        return 'admin/pages/practice_list';
    }

    public static function reporting($router)
    {
        return 'admin/pages/reporting';
    }

    public static function listRoles($router)
    {
        $rolesApi = new RolesAPI(null, null, true);
        Template::assign('roles', $rolesApi->loadRoles());

        return 'admin/pages/roles';
    }

    public static function listGroups($router)
    {
        Template::assign('groups', Group::load(Session::get('user')->practice_id));
        Template::assign('staff', User::loadStaff(Session::get('user')->practice_id));
        Template::assign('users', User::loadPatients(Session::get('user')->practice_id));
        $practiceAPI = new PracticeAPI(null, null, true);
        Template::assign('practices', $practiceAPI->load());

        return 'admin/pages/group_list';
    }

    public static function editGroup($router, $params)
    {
        $group = Group::load(Session::get('user')->practice_id, $params['group_id'])[0];

        $practiceStaff = User::loadStaff($group->practice_id);
        $practicePatients = User::loadPatients($group->practice_id)['payload'];
        $practiceUsers = array_merge($practiceStaff, $practicePatients);

        Debugger::debug($practiceStaff);

        Template::assign('group', $group);
        Template::assign('staff', $practiceStaff);
        Template::assign('patients', $practicePatients);
        Template::assign('practiceUsers', $practiceUsers);
        Template::assign('members', Group::loadMembers($params['group_id']));
        Template::assign('messages', Group::loadMessages($params['group_id']));
        Template::assign('notes', Group::loadNotes($params['group_id']));
        Template::assign('surveys', Group::loadSurveys($params['group_id']));
        Template::assign('practices', Practice::load());
        Template::assign('surveys', Activities::fetchGroupSurveys($params['group_id']));

        return 'admin/pages/group';
    }

    public static function postRole($router)
    {
        Roles::save();

        return ['type' => 'redirect',
                'url' => $router->generate('admin-list-roles')];
    }

    public static function listPermissions($router)
    {
        $rolesApi = new RolesAPI(null, null, true);

        Template::assign('permissions', $rolesApi->loadPermissions());

        return 'admin/pages/permissions';
    }

    public static function postPermission($router)
    {
        Permissions::save(
            $_POST['permission_name'],
            $_POST['permission_desc']
        );

        return ['type' => 'redirect',
                'url' => $router->generate('admin-list-permissions')];
    }

    public static function editPermission($router)
    {
        Template::assign('permission', Roles::load($_GET['pid']));

        return 'admin/pages/edit-permission';
    }

    public static function rolePermissions($router)
    {
        Template::assign('permissions', Permissions::load());
        Template::assign('role', Roles::load($_GET['rid']));

        $rolePermissions = Roles::loadPermissions($_GET['rid']);

        foreach ($rolePermissions as $permission) {

        }

        Template::assign('rolePermissions', $rolePermissions);

        return 'admin/pages/role-permissions';
    }

    public static function postRolePermissions($router)
    {
        Debugger::debug($_POST);

        Roles::wipePermissions($_POST['role_id']);

        foreach($_POST['permissions'] as $permissionId => $on) {
            Permissions::assignToRole($permissionId, $_POST['role_id']);
        }

        return 'admin/pages/role-permissions';
    }

    public static function userRoles($router)
    {
        return 'admin/pages/user-roles';
    }

    public static function postUserRoles($router)
    {
        return 'admin/pages/user-roles';
    }

    public static function signin($router)
    {
        $result = Auth::attempt($_POST['username'], $_POST['password']);

        if (!$result['success']) {
            Session::set('errors', 'We could not log you in with those details, please try again.');

            return ['type' => 'redirect',
                    'url' => '/login'];
        }

        Session::set('logged_in', true);
        Session::set('user', $result['user_id']);

        return ['type' => 'redirect',
                'url' => '/home'];

    }

    public static function signout($router)
    {
        Auth::signout();

        MessageRunner::addMessage('info', 'You have been logged out');

        # Send them to the homepage:
        return ['type' => 'redirect',
                'url' => '/'];
    }

    public static function translations()
    {
        Template::assign('translations', Language::loadAllTranslations());

        //Debugger::debug(Language::loadAllTranslations(), 'All Translations', false, 'translationslog');
        return 'admin/pages/translations';
    }

    public static function importPatients($router)
    {
        Debugger::debug('Processing file');
        //var_dump($_FILES);
        if($_FILES['fileToUpload']['size'] > 0) {

            $response = \Lib\User\Importer::import($_FILES['fileToUpload']);

            echo json_encode($response);
        } else {
            echo json_encode([
                'noFile' => true,
                'error' => 'No file selected.'
            ]);
        }

        exit;
    }

     public static function scheduleSurvey($router)
     {

         $patient_id = $_POST['patient_id'];
         $date       = $_POST['date'];
         $hour       = $_POST['hour'];
         $minute     = $_POST['minute'];
         $meridian   = $_POST['meridian'];
         $method     = $_POST['remind_method'];

         if (!empty($patient_id) && !empty($date) && !empty($hour) && ($minute != null) && !empty($meridian) && !empty($method)) {
             echo json_encode(['status' => Activities::scheduleSurvey($patient_id, $date, $hour, $minute, $meridian, $method)]);
            die;
        }

         echo json_encode(['status' => 'false']);

         die;
     }
}
