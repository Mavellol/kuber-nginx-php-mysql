<?php

/**
 * I belong to a file
 */

namespace App\Acme;

/**
 * I belong to a class
 */
class Foo
{
    public function __construct()
    {
        try {
            $dsn = 'mysql:host=telepresence-db;dbname=test;charset=utf8;port=3306';
            $pdo = new \PDO($dsn, 'dev', 'dev');
        } catch (\PDOException $e) {
            echo $e->getMessage();
            exit;
        }
    }

    /**
     * Gets the name of the application.
     */
    public function getName()
    {
        return 'Nginx PHP MySQL';
    }
}
