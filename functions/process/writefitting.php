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

if(CheckLoginState() == false) {
    PrintHTMLHeader();
    printf("<div class=\"jumbotron\">");
    printf("<div class=\"container\">");
    printf("<h1>Sorry, but you are not allowed to be here!</h1>");
    printf("</div></div>");
    printf("</body></html>");
    die();
}

//Open a connection to the database
$db = DBOpen('w4rpservices');
//Get the user's access token
$token = $db->fetchRow('SELECT * FROM ESITokens WHERE CharacterID= :id', array('id' => $_SESSION['CharacterId']));

//Create the esi variable
$esi = new W4RP\ESI($token['AccessToken'], $token['RefreshToken'], $token['RefreshTokenExpiry']);

//If the current time is greater than the expiry, refresh the token
if(time() > $token['RefreshTokenExpiry']) {
    $esi->RefreshAccess();
}

//Get the fitting from the post
$fittingId = filter_input(INPUT_POST, 'fitting');
//Get the fitting from the database
$fit = $db->fetchColumn('SELECT Fitting FROM Fittings WHERE id= :id', array('id' => $fittingId));
//Write the fitting to the player with ESI API
$result = $esi->WriteESIFitting($_SESSION['CharacterId'], $fit);
//See if the result has been good or not good
//If the result is bad, then print an error
if(!isset($result['fitting_id'])) {
    PrintHTMLHeader();
    printf("<div class=\"jumbotron\">");
    printf("<h1>An Error has occured.</h1>");
    printf("</div>");
    printf("</body></html>");
} 

$location = "http://" . $_SERVER['HTTP_HOST'];
$location = $location . dirname($_SERVER['PHP_SELF']) . '/addfitting.php';
header("Location: " . $location);

?>
