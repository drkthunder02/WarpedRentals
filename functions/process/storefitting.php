<?php

/* 
 *  W4RP Services
 *  GNU Public License
 */

require_once __DIR__.'/../../functions/registry.php';

$esi = new W4RP\ESI($token['AccessToken'], $token['RefreshToken'], $token['RefreshTokenExpiry']);

if(isset($_POST['fitname'])) {
    $name = filter_input(INPUT_POST, 'fitname', FILTER_SANITIZE_SPECIAL_CHARS);
} else {
    $name = null;
}

if(isset($_POST['fitting'])) {
    $fitting = filter_input(INPUT_POST, 'fitting', FILTER_SANITIZE_SPECIAL_CHARS);
} else {
    $fitting = null;
}

if(isset($_POST['shiptype'])) {
    $shiptype = filter_input(INPUT_POST, 'shiptype', FILTER_SANITIZE_SPECIAL_CHARS);
}

//If the name 
if($fitting == null || $name == null || $shiptype == null) {
    $location = $_SERVER['PHP_SELF'] . $_SERVER['HTTP_HOST'];
    $location = $location . dirname($_SERVER['PHP_SELF']) . '/../../index.php';
    header("Location: $location");
}

//Open the database connection
$db = DBOpen();

$shipId = $db->fetchRow('SELECT * FROM Ships WHERE ShipName= :name', array('name' => $shiptype));

$db->insert('Fittings', array(
    'FittingName' => $name,
    'FittingImage' => $shipId['ShipId'],
    'Fitting' => $fitting
));

DBClose($db);


$location = $_SERVER['PHP_SELF'] . $_SERVER['HTTP_HOST'];
$location = $location . dirname($_SERVER['PHP_SELF']) . '/../../index.php';
header("Location: $location");