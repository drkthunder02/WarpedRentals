<?php

/* 
 *  W4RP Services
 *  GNU Public License
 */

//PHP Debug Mode
ini_set('display_errors', 'On');
error_reporting(E_ALL);

//Get the required files to run the site
require_once __DIR__.'/functions/registry.php';

//Start a session
$session = new W4RP\session();

//If we are not logged in, then send the user to the login page.
if($_SESSION['LoginState'] == false) {
    $location = 'http://' . $_SERVER['HTTP_HOST'];
    $location = $location . dirname($_SERVER['PHP_SELF']) . '/login.php';
    header("Location: $location");
    die();
} else {
    $location = ServerProtocol() . $_SERVER['HTTP_HOST'];
    $location = $location . dirname($_SERVER['PHP_SELF']) . '/secure/index.php';
    header("Location: $location");
    die();
}

?>