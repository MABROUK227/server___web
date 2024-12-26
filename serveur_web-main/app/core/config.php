<?php

define("WEBSITE_TITLE", 'BLIB');

//database
define('DB_NAME',"mbk2");
define('DB_USER',"root");
define('DB_PASS',"root");
define('DB_TYPE',"mysql");
define('DB_HOST',"localhost");

define('THEME','eshop/');

define('DEBUG',true);

if(DEBUG){
    ini_set('display_errors',1);
}else{
    ini_set('display_errors',0);

}