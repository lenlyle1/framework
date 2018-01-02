<?php

namespace Controllers;

use \App\Routing\Router;
use \Lib\Session\Session;
use \Lib\Debug\Debugger;
use \Lib\Smarty\Template;
use \Models\Gender;
use \Lib\Survey\Quizling;
use \Lib\Survey\ActionPlan;
use \Lib\Activities\Activities;
use \Lib\Calendar\Calendar;
use \Dompdf\Dompdf;
use \Lib\Utils\Redirect;
use \Lib\User\User;
use \Lib\Followups\Followups;

class PageController extends BaseController
{
    public static function changeLanguage(Router $router, $params)
    {
        $_SESSION['language'] = $params['lang'];

        \Lib\Translate\Language::updateUserLanguage(Session::get('user')->user_id, $params['lang']);

        return ['type' => 'redirect', 'url' => $_SERVER['HTTP_REFERER']];
    }

    public static function home(Router $router)
    {
        Template::assign('page', 'default');
        return 'pages/home';
    }

    public static function setPassword(Router $router)
    {
        return 'pages/set-password';
    }

    public static function updatePassword(Router $router)
    {
        Debugger::debug($_POST);

        $result = \Lib\User\User::updatePassword(Session::get('user'), $_POST['username'], $_POST['password'], $_POST['confirm_password']);

        Debugger::debug($result);
        if($result){
            Redirect::go($router->generate('dashboard'));
        } else {
            Redirect::go($router->generate('set-password'));
        }
    }

    public static function authedHome(Router $router)
    {
        Template::assign('headerClass', 'default');
        return 'pages/home';
    }

    public static function signup(Router $router)
    {
        $gender = new Gender();

        Template::assign('genders', $gender->getAll(0));

        return 'pages/signup';
    }

    public static function forgotPassword(Router $router)
    {
        return 'pages/forgot-password';
    }

    public static function loginHelp(Router $router)
    {
        return 'pages/login-help';
    }

    public static function login(Router $router)
    {
        return 'pages/login';
    }

    public static function dashboard(Router $router)
    {
        return 'pages/dashboard';
    }

    public static function about(Router $router)
    {
        return 'pages/about';
    }

    public static function termsAndConditions(Router $router)
    {
        return 'pages/terms-and-conditions';
    }

    public static function book(Router $router, $params)
    {
        Template::assign('page', $params['page']);
        return 'pages/book';
    }

    public static function activities(Router $router, $params)
    {
        $user = Session::get('user');

        $quizling = new Quizling($user);
        Template::assign('followups', Followups::fetchFollowup($user->user_id));
        Template::assign('motivation_prompts', Activities::fetchMotivation($user->user_id));
        Template::assign('surveys', $quizling->fetchSurveyList());
        Template::assign('action_plans', ActionPlan::fetchActionPlans($user->user_id));

        return 'pages/activities';
    }

    public static function edit_moti(Router $router, $params)
    {
        $user = Session::get('user');
        $prompt_id = $_GET['prompt_id'];

        Template::assign('user_id', $user->user_id);

        return 'admin/pages/partials/motivational-modal';
    }

    public static function actionplan(Router $router, $params)
    {
        if (!empty($_GET['action_plan_id'])) {
            Template::assign('action_plan_id', $_GET['action_plan_id']);
        }

        if(!empty($_GET['user_id'])) {
            $user = User::load(null, $_GET['user_id']);
        } else {
            $user = Session::get('user');
        }

         $quizling = new Quizling($user);

        Template::assign('user_details', ['email' => $user->email_address, 'mobile_phone' => $user->mobile_phone]);

        Template::assign('followup_providers', User::loadAllCoachPract($user->user_id));
        Template::assign('followup', Followups::fetchFollowup($user->user_id));
        Template::assign('focus_areas', ActionPlan::fetchUserGoalAreas($user->user_id));
        Template::assign('user_id', $user->user_id);
        Template::assign('surveys', $quizling->fetchSurveyList($user->user_id));
        Template::assign('ap_list', ActionPlan::getList($user->user_id));
        Template::assign('page', $params['page']);
        return 'pages/actionplan';
    }

    public static function healthsurvey(Router $router, $params)
    {
        $user_obj = Session::get('user');

        Template::assign('user_obj', $user_obj);
        Template::assign('user_age', (date('Y') -  date('Y', strtotime($user_obj->dob))));

        Template::assign('user_height_feet',   Quizling::externalGetResponse(60, $user_obj->user_id));
        Template::assign('user_height_inches', Quizling::externalGetResponse(61, $user_obj->user_id));

        Template::assign('incomplete_survey', Quizling::userIncomplete($user_obj));
        Template::assign('page', $params['page']);
        Template::assign('sha_enabled', true);    //this should be part of the user object... TODO: debug.

        return 'pages/healthsurvey';
    }

    //todo: we need to extract the patient and report types from session, vs relying on passed in vars.
    public static function surveyresults(Router $router, $params)
    {
        $user = self::getUser();

        Template::assign('patient', $user);

        $user_id = $user->user_id;
        $quizling = new Quizling($user);
        $batch_id = $_GET['batch_id'];

        switch($user->condition_name) {
            case 'EE-CTH':
                $study_type = 'eecth';
            break;
            case 'CTH':
                $study_type = 'cth';    //keeping this in for now, just for clarity, though we should simply default to cth if it's set to anything else.
            break;
            default:
                $study_type = 'cth';
        }

        if(!empty($_GET['mode'])){
            $report_mode = $_GET['mode'];
        } else {
            switch($user->role_name) {
                case 'Patient':
                    $report_mode = 'patient';
                break;
                case 'Clinician':
                    $report_mode = 'clinician';
                break;
                default:
                    $report_mode = 'patient';
            }
        }
        // Because we need two even columns for display purposes:
        $survey_data = $quizling->fetchSurveys($batch_id, $study_type, $report_mode);


        $survey_data_2 = $survey_data;
        $survey_data_2 = array_merge($survey_data_2['yellow'], $survey_data_2['red']);

        $survey_data_count = count($survey_data_2);
        $survey_data_col1 = array_slice($survey_data_2, 0, ($survey_data_count / 2));
        $survey_data_col2 = array_slice($survey_data_2, ($survey_data_count / 2));

        Template::assign('survey_id', $batch_id);
        Template::assign('survey_data', $survey_data);
        Template::assign('survey_data_col1', $survey_data_col1);
        Template::assign('survey_data_col2', $survey_data_col2);
        Template::assign('page', $params['page']);

        if($_GET['basic']) {
            //header('Content-Type: text/plain');
            return 'pages/surveyresults-basic';
        } else {

            if ($report_mode == 'patient') {
                return 'pages/surveyresults';
            } else if($report_mode == 'clinician') {
                return 'pages/surveyresults-clinician';
            }
        }
    }

    public static function faq(Router $router, $params)
    {
        Template::assign('page', $params['page']);
        return 'pages/faq';
    }


    public static function printActionPlan($router, $params)
    {
        $user = self::getUser();

        $user_id = $user->user_id;
        $action_plan_id = $_GET['action_plan_id'];
        $ActionPlan = new ActionPlan($user_id);

        $ap_data = $ActionPlan->loadAP($action_plan_id);

        $calendar = new Calendar($ap_data['start_date']);

        if ($_GET['mode'] === 'summary') {
            Template::assign('nav_include', 1);
            Template::assign('ap_id', $action_plan_id);
        }
        Template::assign('ap_data', $ap_data);
        Template::assign('calendar', $calendar->draw());
        return 'pages/APPrinter';
    }


    //print a survey, if no survey_id is provided, fetch the most recent.
    public static function printSurvey($router, $params)
    {
        $user = self::getUser();
        $quizling = new Quizling($user);

        $study_type   = '';
        $report_mode = '';
        switch($user->condition_name) {
            case 'EE-CTH':
                $study_type =  'eecth';
            break;
            case 'CTH':
                $study_type =   'cth';    //keeping this in for now, just for clarity, though we should simply default to cth if it's set to anything else.
            break;
            default:
                $study_type =    'cth';
        }

        switch($user->role_name) {
            case 'Patient':
                $report_mode = 'patient';
            break;
            case 'Clinician':
                $report_mode = 'clinician';
            break;
            default:
                $report_mode = 'patient';
        }

        if (!empty($_GET['mode']) && in_array($_GET['mode'], ['patient','clinician'])) {
            $report_mode = $_GET['mode'];
        }

        $batch_id = (isset($_GET['survey_id']) && $_GET['survey_id']*1 > 0)? $_GET['survey_id'] : $quizling->getLatestUserBatch($user->user_id);
        $survey_data = $quizling->fetchSurveys($batch_id, $study_type, $report_mode);
        Template::assign('survey_data', $survey_data);
        Template::assign('focus_areas', Quizling::fetch_goals($user->user_id));

        if ($_GET['mode'] == 'clinician') {
            return 'pages/surveyresults-clinician';
        } else {
            return 'pages/surveyresults-barebones';
        }
    }

    public static function pdfExport($router, $params)
    {
        $user = self::getUser();

        GLOBAL $smarty;

        $item_id   = $_GET['item_id'];
        $page_type = $_GET['page_type'];



        $html = 'invalid template';
        $filename = '';

        if ($page_type === 'action_plan') {
            error_log($user->user_id);
            error_log('item id '. $item_id);
            error_log("page type ".$page_type);

            $ActionPlan = new ActionPlan($user->user_id);
            $ap_data    = $ActionPlan->loadAP($item_id);
            $filename   = 'action_plan_'.date('m-d-Y');
            $smarty->assign('ap_data', $ap_data);

            $calendar = new Calendar($ap_data['start_date']);
            $smarty->assign('calendar', $calendar->draw());
            $html = $smarty->fetch('pages/APPrinter.tpl');
        }
        if ($page_type ==='survey') {
            require_once('../vendor/tecnickcom/tcpdf/tcpdf.php');

            switch($user->condition_name) {
                case 'EE-CTH':
                    $study_type =  'eecth';
                break;
                case 'CTH':
                  $study_type =   'cth';    //keeping this in for now, just for clarity, though we should simply default to cth if it's set to anything else.
                break;
                default:
                 $study_type =    'cth';
            }

            switch($user->role_name) {
                case 'Patient':
                    $report_mode = 'patient';
                break;
                case 'Clinician':
                    $report_mode = 'clinician';
                break;
                default:
                $report_mode = 'patient';
            }

            if (isset($_GET['mode']) &&  $_GET['mode'] == 'clinician') {
                $report_mode = 'clinician';
            }

            if ($report_mode == 'clinician') {
                $user = User::loadPatient($_GET['user_id']);
            } else {
                $user = Session::get('user');
            }

            $quizling = new Quizling($user);
            $survey_data = $quizling->fetchSurveys($item_id, $study_type, $report_mode);

            if (($report_mode == 'clinician') ||  (isset($_GET['mode']) &&  $_GET['mode'] == 'clinician')) {
                Template::assign('survey_data', $survey_data);
                Template::assign('focus_areas', Quizling::fetch_goals($user->user_id));
                Template::assign('patient', $user);

                $html = $smarty->fetch('pages/surveyresults-clinician-basic.tpl');
            } else {
                $html = $smarty->fetch('pages/SurveyPrinter.tpl');
            }

            $pdf = new \TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
            $pdf->SetAutoPageBreak(TRUE);
            $pdf->SetMargins(0, 0, 0, false);

            $pdf->AddPage();
            $pdf->writeHTML($html, true, false, true, false, '');
            $pdf->lastPage();
            $pdf->Output('survey_'.date('m-d-Y').'.pdf', 'D');

            die;
            return;
        }

        $dompdf = new Dompdf();
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Output the generated PDF to Browser
        $dompdf->stream($filename);
        die;
    }

    private static function getUser()
    {
        if(!empty($_GET['user_id'])) {
            $user = User::load(null, $_GET['user_id'])['payload'];

            // security checks
            $adminUser = Session::get('user');

            if($adminUser->practice_id == $user->practice_id){
                return $user;
            } else {
                die('Unauthorized access!');
            }
        } else {
            return Session::get('user');
        }
    }

    public static function healthContentOnly($router, $params)
    {
        return 'pages/HealthTipsContent';
    }
}
