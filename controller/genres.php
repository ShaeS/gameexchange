<?php
include("../model/genresdb.php");

if($_POST['method'] == "getall"){
    get_genres();   
}

?>