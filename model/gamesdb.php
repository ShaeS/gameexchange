<?php
include("connect.php");

    function insert_game(){
      global $db;
      $query = "INSERT INTO games (title, players, genre, playtime, playerage, user_id) VALUES ('".$_POST['title']."', '".$_POST['players']."', '".$_POST['genre']."', '".$_POST['time']."', '".$_POST['age']."', '".$_POST['user_id']."')";
      echo $query;
      $result = $db->query($query);
    }

    function get_games(){
      global $db;
      $query = "SELECT * FROM games";
      $result = $db->query($query);
      echo json_encode($result->fetchAll());
    }

    function update_game(){
      global $db;
      $query = "UPDATE games SET title = '".$_POST['title']."', players = '".$_POST['players']."', genre = '".$_POST['genre']."', playtime = '".$_POST['time']."', playerage = '".$_POST['age']."' WHERE ID='".$_POST['game_id']."'";
      $result = $db->query($query);
    }

    function delete_game(){
      
    }

?>