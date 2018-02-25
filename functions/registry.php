<?php

/* 
 *  W4RP Services
 *  GNU Public License
 */

//Autloader
require_once __DIR__.'/../vendor/autoload.php';

//Classes
require_once __DIR__.'/../functions/class/esi.php';
require_once __DIR__.'/../functions/class/login.php';
require_once __DIR__.'/../functions/class/sessions.php';

//ESI Calls
require_once __DIR__.'/../functions/class/calls/mail.php';

//Database Functions
require_once __DIR__.'/../functions/database/dbclose.php';
require_once __DIR__.'/../functions/database/dbopen.php';

?>
