<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//Initiate a session
$session = new W4RP\session();
//Initiate the class to be able to pull market data from the ESI server
$esiMarket = new W4RP\ESI\CALLS\Market();

