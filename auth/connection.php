<?php

function connect(){
    $dbHost="localhost";
    $user="root";
    $pass="";
    $dbname="php_inventory_manage";

    $conn=new mysqli($dbHost,$user,$pass,$dbname);

    return $conn;
}
    function closeConnect($cn){
        $cn->close();
    }
    
?>