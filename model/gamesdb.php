<?php
include("connect.php");

    function insert_game(){
      global $db;
      $query = "INSERT INTO games (title, players, genre, playtime, playerage, user_id, image) VALUES ('".$_POST['title']."', '".$_POST['players']."', '".$_POST['genre']."', '".$_POST['time']."', '".$_POST['age']."', '".$_POST['user_id']."', '".$_POST['image']."')";
      echo $query;
      $result = $db->query($query);
    }

    function get_games(){
      global $db;
      $query = "SELECT games.ID AS game_id, games.user_id, games.image, games.title, users.username, users.avatar FROM games 
      LEFT JOIN users ON games.user_id = users.ID";
      $result = $db->query($query);
      echo json_encode($result->fetchAll());
    }

    function get_search(){
      global $db;
      $query = "SELECT games.ID AS game_id, games.user_id, games.image, games.title, users.username, users.avatar FROM games 
      LEFT JOIN users ON games.user_id = users.ID WHERE title LIKE '%".$_POST['search']."%'";
      $result = $db->query($query);
      echo json_encode($result->fetchAll());
    }

    function get_single_game(){
      global $db;
      $query = "SELECT * FROM games WHERE ID = '".$_POST['game_id']."'";
      $result = $db->query($query);
      echo json_encode($result->fetchAll());
    }

    function get_usergames(){
      global $db;
      $query = "SELECT * FROM games WHERE user_id = '".$_POST['user_id']."'";
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