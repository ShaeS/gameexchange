<?php
include("../model/userdb.php");

if($_POST['method'] == "insert"){
    insert_user();   
}

if($_POST['method'] == "login"){
    get_user_by_username_password();   
}

if($_POST['method'] == "update"){
    update_user();   
}

if($_POST['method'] == "delete"){
    delete_user();   
}

if($_POST['method'] == "getinfo"){
    get_userinfo();   
}
?>