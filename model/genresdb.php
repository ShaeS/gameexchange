<?php
include("connect.php");

    function get_genres(){
      global $db;
      $query = "SELECT * FROM genres ORDER BY genrename";
      $result = $db->query($query);
      echo json_encode($result->fetchAll());
    }

?>