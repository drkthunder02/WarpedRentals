<?php

/* 
 *  W4RP Services
 *  GNU Public License
 */

function DecodeESIWalletDate($data) {
    //Find the end of the date
    $dateEnd = strpos($data, "T");
    //Split the string up into date and time
    $dateArr = str_split($data, $dateEnd);
    //Trim the T and Z from the end of the second item in the array
    $dateArr[1] = ltrim($dateArr[1], "T");
    $dateArr[1] = rtrim($dateArr[1], "Z");
    //Return the date and time back to calling function
    return $dateArr;
}