<?php

namespace Controllers;

use \Lib\API\UserAPI;
use \Lib\Session\Session;
use \Lib\API\TranslationAPI;
use \Lib\API\RolesAPI;
use \Lib\Debug\Debugger;
use \App\Routing\Router;
use \Lib\Survey\Quizling;
use \Lib\Survey\ActionPlan;
use \Lib\Activities\Activities;
use \Lib\Followups\Followups;


class ApiController extends BaseController
{
    //health surveys:
    public static function surveySubmit()
    {
        $quizling = new Quizling(Session::get('user'));

        $quizling->batch_id = (!empty($_POST['survey_id']))? $_POST['survey_id'] : $quizling->getNewBatch();
        $quizling->storeResults($_POST['survey_data']);


        if ($quizling->runEval()) {
            echo json_encode(['status' => 'success','batch_id' => $quizling->batch_id]);
        } else {
            echo json_encode(['status' => 'false']);
        }

        die;
    }

    public static function fetchSurveyList()
    {
        $return = [];
        $quizling = new Quizling(Session::get('user'));
        if ($output = $quizling->fetchSurveyList()) {
            echo json_encode(['success' => 1, 'payload' => $output]);
        }
        else {
            echo json_encode(['result' => 'failure', 'data' => []]);
        }
        die;
    }

    //now we need to take the action plan into account.....
    public static function fetchSurvey()
    {
        if (isset($_GET['ap_id'])) {
            $ap_id = $_GET['ap_id'];
            $quizling = new Quizling(Session::get('user'));
            echo json_encode($quizling->fetchSurveyDetails($ap_id));
        }

        die;
    }

    //action plans:
    public static function fetchActionPlan()
    {
        $user = Session::get('user');
        if (isset($_POST['action_plan_id'])) {
            $action_plan_id     = $_POST['action_plan_id'];
            $action_plan = new ActionPlan($user->user_id);

            if ($output = $action_plan->loadAP($action_plan_id)) {
                echo json_encode(['result' => 'success', 'data' => $output]);
            } else {
                echo json_encode(['result' => 'fail', 'data' => []]);
            }
        }
        die;
    }

    public static function updateActionPlan()
    {
        $user = Session::get('user');

        $action_plan = new ActionPlan($user->user_id);
        $action_plan->batch_id = $_POST['batch_id'];

        echo  $action_plan->update($_POST['user_input']);
        die;
    }

    public static function newActionPlan()
    {
        $user = Session::get('user');

        $action_plan = new ActionPlan($user->user_id);
        $action_plan->coached = $_POST['coached'];

        $batch_id = $action_plan->getNew();

        echo json_encode(['batch_id' => ($batch_id)?: false]);
        die;
    }

    public static function fetchActionPlanList()
    {
        $user = Session::get('user');
        $action_plan = new ActionPlan($user->user_id);

        if ($output = $action_plan->getList()){
             echo json_encode(['result' => 'success', 'data' => $output]);
        }else {
            echo json_encode(['result' => 'fail', 'data' => []]);
        }
        die;
    }

    public static function populateActionPlans()
    {
        $user = Session::get('user');
        echo ActionPlan::fetchActionPlans($user_id->user_id);
        die;
    }

    public static function saveCustomGoal()
    {

        $user = Session::get('user');
        echo json_encode(ActionPlan::saveCustomGoal($user->user_id , $_POST['batch_id'], $_POST['goal_name']));
        die;
    }


    public static function updateTranslation()
    {
        unset($_SESSION['translations']);
        $api = new TranslationAPI($_GET['auth_id'], $_GET['auth_public']);

        return $api->updateTranslation($_POST['itemKey'], $_POST['enTxt'], $_POST['esTxt']);
    }

    public static function populateMotivation()
    {
        echo json_encode(Activities::fetchMotivation());
        die;
    }

    public static function populateFollowup($router, $params)
    {
        $user = Session::get('user');
        echo json_encode(Followups::fetchFollowup($user->user_id));
        die;
    }

    public static function scheduleFollowup($router, $params)
    {
        if ( !isset($_POST['user_id']) || empty($_POST['user_id'])) {
            $user = Session::get('user');
            $user_id = $user->user_id;
        } else {
            $user_id = $_POST['user_id'];
        }

        $action_plan_id = (isset($_POST['action_plan_id']) && !empty($_POST['action_plan_id']))? $_POST['action_plan_id'] : null;
        $followup_id = (isset($_POST['followup_id']) && !empty($_POST['followup_id']))? $_POST['followup_id'] : null;

        $date            = $_POST['date'] ?? '';
        $hour            = $_POST['hour'] ?? '';
        $minute          = $_POST['minute'] ?? '';
        $tod             = $_POST['tod'] ?? '';
        $reminder_method = $_POST['prompt_type'] ?? '';
        $followup_method = $_POST['followup_method'] ?? '';
        $coach           = $_POST['coach'] ?? '';
        $regarding       = $_POST['regarding'] ?? '';
        $email_address   = $_POST['email_address'] ?? null;
        $phone           = $_POST['mobile_number'] ?? null;

        $notes          = $_POST['notes'] ?? null;
        $outcome        = $_POST['outcome'] ?? null;
        $next_step      = $_POST['nextstep'] ?? null;
        $completed_at   = $_POST['completed_at'] ?? null;
        Debugger::debug($date);
        echo json_encode(Followups::scheduleFollowup($followup_id, $action_plan_id, $user_id, $date, $hour, $minute, $tod, $reminder_method, $followup_method, $coach, $regarding, $notes, $outcome, $next_step, $email_address, $phone));
        die;
    }

    public static function fetchSingleFollowup($router, $params)
    {
        $user = Session::get('user');

        if (!empty($_POST['followup_id'])  && !empty($_POST['patient_id'])) {
            if(empty($_GET['basic'])){
                echo json_encode(Followups::fetchSingleFollowup($_POST['patient_id'], $_POST['followup_id'], $user->user_id));
            } else {
                echo json_encode(Followups::fetchSingleFollowup($_POST['patient_id'], $_POST['followup_id'], $user->user_id));
            }
        }

        die;
    }

    public static function healthAreaSubmit($router, $params)
    {
        $quizling = new Quizling(Session::get('user'));
        $quizling->updateHealthAreas($_POST['survey_id'], $_POST['survey_areas']);

        die;
    }

    public static function setMotiPrompt($router, $params)
    {
        Debugger::debug('save motivational prompt');
        Debugger::debug($_POST, 'POST');
        $user = Session::get('user');
        echo Activities::saveMotiPrompt($user->user_id, $_POST['user_data']);
        die;
    }

    public static function finishActionPlan($router, $params)
    {
        $user = Session::get('user');
        $batch_id = $_POST['batch_id'];

        $actionPlan = new ActionPlan($user->user_id);
        $actionPlan->setComplete($batch_id);

    }

    public static function completeSurvey($router, $params)
    {
        $user = Session::get('user');
        $batch_id = !empty($_POST['batch_id'])? $_POST['batch_id'] : null;

        if (isset($user->user_id) && ($batch_id)) {
            $quizling = new Quizling($user);
            $quizling->batch_id = $batch_id;

            return $quizling->finalize();
        }

        return false;
    }


    public static function surveyNewBatch($router, $params)
    {
        $user = Session::get('user');
        if ($output = Quizling::getNewBatch($user->user_id)) {
            echo json_encode(['status' => 'success', 'payload' => $output]);
        } else {
            echo json_encode(['status' => 'failure', 'payload' =>  null]);
        }
        die;
    }

    public static function surveyLastBatch($router, $params)
    {
        $user = Session::get('user');

        if ($output = Quizling::getLatestUserBatch($user->user_id)) {
            echo json_encode(['status' => 'success', 'payload' =>  $output]);
        } else {
            echo json_encode(['status' => 'failure', 'payload' =>  null]);
        }

        die;
    }

    public static function surveySetPage($router, $params)
    {
        $user = Session::get('user');
        $page_number = $_POST['page_number'];
        $survey_id    = $_POST['survey_id'];

        if ($output = Quizling::settUserBatchPage($user->user_id, $survey_id, $page_number)) {
            echo json_encode(['status' => 'success']);
        } else {
            echo json_encode(['status' => 'failure']);
        }

        die;
    }

    public static function startStopPrompt($router, $params)
    {
        $user = Session::get('user');
   //     error_log('batch id '. $_POST['batch_id']);
    //    error_log('mode: '. $_POST['mode']);

        if (in_array($_POST['mode'], [0,1]) && intval($_POST['batch_id']) > 0 ) {
            Activities::startStopPrompt($user->user_id, $_POST['batch_id'], $_POST['mode']);
        }

         die;
    }

}
