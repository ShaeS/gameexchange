<?php
include("connect.php");

    function insert_favorite(){
      global $db;
      $query = "INSERT INTO favorites (user_id, user_id2) VALUES ('".$_POST['user_id']."', '".$_POST['user_id2']."')";
      echo $query;
      $result = $db->query($query);
    }

    function get_favorites(){
      global $db;
      $query = "SELECT * FROM favorites WHERE user_id = '".$_POST['user_id']."'";
      $result = $db->query($query);
      echo json_encode($result->fetchAll());
    }

    function update_favorite(){
        //update info from users from the users table
    }

    function delete_favorite(){
        //remove a row of user from the users table
    }

?>