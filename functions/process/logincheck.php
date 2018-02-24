<?php

/* 
 *  W4RP Services
 *  GNU Public License
 */

function CheckLoginState() {
    if($_SESSION['LoginState'] == true) {
        return true;
    } else {
        return false;
    }
}

?>