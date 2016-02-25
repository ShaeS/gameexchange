<?php
  var_dump($_POST);
var_dump($_FILES);

if(!is_dir("../users/".$_POST['user_id']."/")) {
  mkdir("../users/".$_POST['user_id']."/", 0775);
}
if(move_uploaded_file($_FILES["images"]['tmp_name'][0], "../users/".$_POST['user_id']."/avatar.jpg")) {
  include("connect.php");
  global $db;
  $query = "UPDATE users SET avatar = './users/".$_POST['user_id']."/avatar.jpg' WHERE ID='".$_POST['user_id']."'";
  $result = $db->query($query);
}

?>