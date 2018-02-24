<?php

/* 
 *  W4RP Services
 *  GNU Public License
 */

function PrintHTMLHeader() {
    printf("<head>
                <!--metas-->
                <meta content=\"text/html\" charset=\"utf-8\" http-equiv=\"Content-Type\">
                <meta content=\"W4RP Services\" name=\"description\">
                <meta content=\"index,follow\" name=\"robots\">
                <meta content=\"width=device-width, initial-scale=1\" name=\"viewport\">
                <title>W4RP Services</title>
                <link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">
                <link href=\"../css/style.css\" rel=\"stylesheet\" type=\"text/xss\">
                <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>
                <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>
                <style type=\"text/css\">
                    body{
                        background-image:url(../images/scifi-mmogames-entropy-asteroid-belt-screenshot.jpg);
                        background-repeat:no-repeat;
                        background-attachment: fixed;
                    }
                    .affix {
                        top: 75px;
                    }
                    .affix-bottom {
                        position: absolute;
                    }
                </style>
            </head>");
}

?>
