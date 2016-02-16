<?php
include("../model/commentsdb.php");

if($_POST['method'] == "insert"){
    insert_comment();   
}

if($_POST['method'] == "getall"){
    get_comments();   
}

?>