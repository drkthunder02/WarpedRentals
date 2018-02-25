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

$session = new W4RP\session();

//print the html header
PrintHTMLHeader();
//Print the html body tag
printf("<body>");
//print the upper navigation bar
PrintNavigationBar();

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

//Print out a form to add a new system to be rented, and whose renting it.
printf("<form>");
printf("div class=\"form-group\">");
printf("<label for=\"system\">System:</label>");
printf("<input class=\"form-control\" id=\"system\" name=\"system\">");
printf("</div>");
printf("<div class=\"form-group\">");
printf("<label for=\"price\">Price:</label>");
printf("<input class=\"form-control\" id=\"price\" name=\"price\" default=\"1.0\">");
printf("</div>");
printf("<div class=\"form-group\">");
printf("<label for=\"renter\">Renter:</label>");
printf("<input class=\"form-control\" id=\"renter\" name=\"renter\">");
printf("</div>");
printf("div class=\"form-group\">");
printf("<label for=\"poc\">Point of Contact:</label>");
printf("<input class=\"from-control\" id=\"poc\" name=\"poc\" default=\"John Smith\">");
printf("</div>");
printf("<button type=\"submit\" class=\"btn btn-primary mb-2\">Confirm identity</button>");
printf("</form>");

printf("</html></body>");