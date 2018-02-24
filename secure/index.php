<?php

/* 
 *  W4RP Services
 *  GNU Public License
 */

require_once __DIR__.'/../functions/registry.php';

$session = new W4RP\session();

$admin = $_SESSION['Admin'];

//print the html header
PrintHTMLHeader();
//Print the html body tag
printf("<body>");
//print the upper navigation bar
PrintNavigationBar();
//Check if the user is an administrator for other options to display on the pages


//close the html and body tags
printf("</body>");
printf("</html>");

?>
