<?php

namespace Lib\Validation;

use \Lib\Debug\Debugger;

abstract class Validation
{
    protected $errors = [];

    public function setError($field, $error)
    {
        $this->errors[$field][] = $error;
    }

    public function fieldInDb($modelName, $fieldName, $value)
    {
        $modelName = '\\Models\\' . $modelName;
        $model = new $modelName();

        return $model->getOne($fieldName, $value);
    }

    public function formatFieldName($fieldName)
    {
        return str_replace('_', ' ', ucwords($fieldName));
    }

    protected function notEmpty($value)
    {
        if ($value == '') {
            return false;
        }

        return true;
    }

    public function testEmail($email)
    {
        $result = filter_var($email, FILTER_VALIDATE_EMAIL);
        // Debugger::debug($result);
        if (!$result) {
            $this->setError('email_address', 'Invalid email format');
            return false;
        }
    }

    public  function checkRequired($requiredFields, $params)
    {
        foreach ($requiredFields as $field) {
            if(!$this->notEmpty($params[$field])){
                Debugger::debug($field . ' empty');
                $this->setError($field, $this->formatFieldName($field) . ' is required');
            }
        }
    }

    public function processResult()
    {
        if ($this->errors) {
            return [
                'success' => false,
                'errors' => $this->errors
            ];
        } else {
            return [
                'success' => true
            ];
        }
    }
}