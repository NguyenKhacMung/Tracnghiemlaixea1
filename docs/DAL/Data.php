<?php

class Data {
    //put your code here
    
    function getConnect()
    {
        $host = "mysql:host=localhost;dbname=localhost";
        $option = array(
            PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        );
        try {
            $db = new PDO($host, 'root', '', $option);
        } catch (PDOException $ex) {
            echo $ex->getMessage();
        }
        
        return $db;
    }
    
    // ham tra ve mot mang
    function getArray($sql, $arr = null)
    {
        $stmt = $this->getConnect()->prepare($sql);
        $stmt->execute($arr);
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        $result = $stmt->fetchAll();        
        return $result;
    }
}
