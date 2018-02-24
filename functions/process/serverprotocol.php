<?php

/* 
 *  W4RP Services
 *  GNU Public License
 */

function ServerProtocol() {
    if(!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') {
        $protcol = 'https://';
    } else {
        $protocol = 'http://';
    }
    
    return $protocol;
}