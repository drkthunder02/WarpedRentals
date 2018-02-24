<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function DBOpen($tables) {
    $config = parse_ini_file(__DIR__.'/../configuration/database.ini');
    

    $dbh = new \Simplon\Mysql\Mysql(
        $config['server'],
        $config['username'],
        $config['password'],
        $tables
    );
    
    return $dbh;
}

