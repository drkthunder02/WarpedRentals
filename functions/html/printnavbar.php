<?php

/* 
 *  W4RP Services
 *  GNU Public License
 */

function PrintNavigationBar() {
    
    $corp = $_SESSION['CorporationName'];
    $char = $_SESSION['CharacterName'];
    $id = $_SESSION['CharacterId'];
    $admin = $_SESSION['Admin'];
    
    if($admin == true) {
        printf("<nav class=\"navbar navbar-toggleable-md navbar-inverse bg-inverse\">
                <a class=\"navbar-brand\" href=\"index.php\"><img src=\"http://image.eveonline.com/Alliance/99004116_64.png\" style=\"margin-top: -10px;\"></a>

                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">
                  <ul class=\"navbar-nav mr-auto\">
                    <li class=\"dropdown\">
                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\">Moon Rentals</a>
                        <ul class=\"dropdown-menu\">
                            <li><a href=\"moonrentals.php\">Rentals</li>
                            <li><a href=\"moonrenters.php\">Renters</a></li>
                            <li><a href=\"addmoon.php\">Add Moon</a></li>
                        </ul>
                    </li>
                    <li class=\"dropdown\">
                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\">System Rentals</a>
                        <ul class=\"dropdown-menu\">
                            <li><a href=\"systemrentals.php\">Rentals</a></li>
                            <li><a href=\"systemrenters.php\">Renters</a></li>
                            <li><a href=\"addsystem.php\">Add System</a></li>
                        </ul>
                    </li>
                  </ul>
                  <ul class=\"navbar-nav navbar-right\">
                        <span class=\"navbar-text\">
                            <img src=\"https://imageserver.eveonline.com/Character/" . $id . "_64.jpg\" style=\"margin-top: -10px;\"></img>
                        </span>
                        <li class=\"nav-item\">
                            <a class=\"nav-link\" href=\"../logout.php\">Logout</a>
                        </li>
                    </ul>
                </div>
              </nav>");
    } else {
        printf("<nav class=\"navbar navbar-toggleable-md navbar-inverse bg-inverse\">
                <a class=\"navbar-brand\" href=\"index.php\"><img src=\"http://image.eveonline.com/Alliance/99004116_64.png\" style=\"margin-top: -10px;\"></a>

                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">
                  <ul class=\"navbar-nav mr-auto\">
                    <li class=\"nav-item\">
                        <a class=\"nav-link\" href=\"moonrentals.php\">Forum</a>
                    </li>
                    <li class=\"nav-item\">
                        <a class=\"nav-link\" href=\"systemrentals.php\">Corp Wallets</a>
                    </li>
                  </ul>
                  <ul class=\"navbar-nav navbar-right\">
                        <span class=\"navbar-text\">
                            <img src=\"https://imageserver.eveonline.com/Character/" . $id . "_64.jpg\" style=\"margin-top: -10px;\"></img>
                        </span>
                        <li class=\"nav-item\">
                            <a class=\"nav-link\" href=\"../logout.php\">Logout</a>
                        </li>
                    </ul>
                </div>
              </nav>");
    }
    
    
}

?>
