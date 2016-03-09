<?php
    include("connect.php");

    function insert_user(){
      global $db;
      $query = "INSERT INTO users (name, username, email, password, location) VALUES ('".$_POST['name']."', '".$_POST['username']."', '".$_POST['email']."', '".$_POST['password']."', '".$_POST['city']."')";
      $result = $db->query($query);
    }

    function get_user_by_username_password(){
        global $db;
        $query = "SELECT ID FROM users WHERE username = '".$_POST['username']."' AND password = '".$_POST['password']."'";
        $result = $db->query($query);
        $checkuser = $result->fetchAll();
        if(empty($checkuser)) {
          echo json_encode(0);
        } else {
          echo json_encode($checkuser);
        }
        
    }

    function update_user(){
      global $db;
      $query = "UPDATE users SET name = '".$_POST['name']."', username = '".$_POST['username']."', email = '".$_POST['email']."', password = '".$_POST['password']."', location = '".$_POST['city']."' WHERE ID='".$_POST['user_id']."'";
      $result = $db->query($query);
    }

    function delete_user(){
      global $db;
      $query = "DELETE FROM users WHERE ID = '".$_POST['user_id']."'";
      $result = $db->query($query);
    }

    function get_userinfo(){
        global $db;
        $query = "SELECT * FROM users WHERE ID = '".$_POST['user_id']."'";
        $result = $db->query($query);
        echo json_encode($result->fetchAll());
    }

?>