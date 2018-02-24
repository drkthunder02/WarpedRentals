<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$session = new W4RP\session();

//print the html header
PrintHTMLHeader();
//Print the html body tag
printf("<body>");
//print the upper navigation bar
PrintNavigationBar();
//Check if user is an admin
if($_SESSION['Admin'] != true) {
    printf("<h1>Error!</h1><br>");
    printf("<h2>Sorry, but you don't belong here.<br></h2>");
    die();
}

printf("</html></body>");