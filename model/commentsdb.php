<?php
include("connect.php");

    function insert_comment(){

    }

    function get_comments(){
      global $db;
      $query = "SELECT * FROM comments";
      $result = $db->query($query);
      echo json_encode($result->fetchAll());
    }

    function update_comment(){
        //update info from users from the users table
    }

    function delete_comment(){
        //remove a row of user from the users table
    }

?>