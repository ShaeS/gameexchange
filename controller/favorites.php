<?php
include("../model/favoritesdb.php");

if($_POST['method'] == "insert"){
    insert_favorite();   
}

if($_POST['method'] == "getall"){
    get_favorites();   
}

?>