<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


//PHP Debug Mode
ini_set('display_errors', 'On');
error_reporting(E_ALL);

require_once __DIR__.'/functions/registry.php';

//Load the classes we need
$session = new W4RP\session();
$esiMail = new W4RP\ESI\CALLS\Mail();

//Check if user is logged in and also an administrator
if((CheckLoginState() != true) || ($_SESSION['Admin'] != true)) {
    PrintHTMLHeader();
    printf("<div class=\"jumbotron\">");
    printf("<div class=\"container\">");
    printf("<h1>Sorry, but you are not allowed to be here!</h1>");
    printf("</div></div>");
    printf("</body></html>");
    die();
}

//Open a connection to the database
$db = DBOpen();

//Get all systems being rented from the database
$reminderSystem = $db->fetchRowMany('SELECT * FROM SystemRental WHERE Available=false');
$reminderMoon = $db->fetchRowMany('SELECT * FROM MoonRental WHERE Available=false');

//Get the current date, and then get the next month to send to the list as reminders
$date = date('Y-m-d');
$month = date('F');
if($month == 'February') {
    $nextMOnth = date('F', strtotime('+30 days', strtotime($date)));
} else {
    $nextMonth = date('F', strtotime('+30 days', strtotime($date)));
}

//Send a reminder to the System Rentals
foreach($reminderSystem as $reminder) {
    
}

//Send a reminder to the Moon Rentals
foreach($reminderMoon as $reminder) {
    
}

//At the end of the file close the connection to the database
DBClose($db);

?>
