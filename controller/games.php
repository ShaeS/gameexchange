<?php
include("../model/gamesdb.php");

if($_POST['method'] == "insert"){
    insert_game();   
}

if($_POST['method'] == "getall"){
    get_games();   
}


?>