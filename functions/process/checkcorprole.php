<?php

/* 
 *  W4RP Services
 *  GNU Public License
 */

function CheckCorpRole(W4RP\ESI\Calls $esi) {
    
    $correctRole == false;
    //Check the roles of the user to see if they are allowed to store fittings for their corp
    $roles = $esi->GetCorpRoles($_SESSION['CharacterId']);
        
    foreach($roles as $role) {
        if($role == $looking) {
            $correctRole = true;
        }
    }

    if($correctRole == true) {
        return true;
    } else {
        return false;
    }
    
}