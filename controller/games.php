<?php
include("../model/gamesdb.php");

if($_POST['method'] == "add"){
    insert_game();   
}

if($_POST['method'] == "getall"){
    get_games();   
}

if($_POST['method'] == "update"){
    update_game();   
}


?>