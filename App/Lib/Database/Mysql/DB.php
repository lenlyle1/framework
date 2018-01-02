<?php

namespace Lib\Database\Mysql;

use \Lib\Debug\Debugger;

class DB
{
    private $db = null;

    private $dbHost;

    private $dbPort;

    private $dbName;

    private $dbUser;

    private $dbPass;

    public function __construct($dbHost, $dbPort, $dbName, $dbUser, $dbPass)
    {
        $this->dbHost = $dbHost;
        $this->dbPort = $dbPort;
        $this->dbName = $dbName;
        $this->dbUser = $dbUser;
        $this->dbPass = $dbPass;

        $this->connect();
    }

    private function connect()
    {
        try{
            $this->db = new \PDO('mysql:host=' . $this->dbHost . ';port=' . $this->dbPort . ';' .
                                 'dbname=' . $this->dbName . ';charset=utf8', $this->dbUser, $this->dbPass);

            $this->db->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        } catch(PDOException $e){
            Debugger::debug($e->getMessage());
            //Errors::handle($e, 'sqlerr');
        }
    }

    public function fetchAll($sql, $params = [])
    {
        $stmt = $this->runQuery($sql, $params);

        return $stmt->fetchAll(\PDO::FETCH_OBJ);
    }

    public function fetchOne($sql, $params = [])
    {
        $stmt = $this->runQuery($sql, $params);

        return $stmt->fetch(\PDO::FETCH_OBJ);
    }

    public function insertUpdate($sql, $params)
    {
        $stmt = $this->runQuery($sql, $params);

        return ( int ) $this->db->lastInsertId();
    }

    public function upsert($sql, $params)
    {
        $stmt = $this->runQuery($sql, $params);
        return ($stmt->rowCount() > 0)? true : false;
    }

    public function runQuery($sql, $params = [])
    {
        if (empty($this->db)) {
            die('There has been a serious problem');
        }

        // write to log when in dev mode
        Debugger::debug($sql, 'SQL', false, 'sqllog');
        Debugger::debug($params, 'VALUES', false, 'sqllog');

        try {
            $stmt = $this->db->prepare($sql);
            $stmt->execute($params);
        } catch (\PDOException $e) {
            Debugger::debug($e->getMessage(), 'SQL Error', true, 'sqlerr');
            Debugger::debug($sql, 'SQL', false, 'sqlerr');
            Debugger::debug($params, 'with params:', false, 'sqlerr');
        }

        // Debugger::debug($stmt->fetchAll(\PDO::FETCH_OBJ), 'Query results', false, 'sqllog');

        return $stmt;
    }

    // public function beginTransaction()
    // {
    //     return PDO::beginTransaction();
    // }

    // public function rollBack()
    // {
    //     return PDO::rollback();
    // }

    // public function commitTransaction()
    // {
    //     return PDO::rollback();
    // }
}
