<?php
  var_dump($_POST);
var_dump($_FILES);

if(!is_dir("../users/".$_POST['user_id']."/")) {
  mkdir("../users/".$_POST['user_id']."/", 0775);
}
move_uploaded_file($_FILES["images"]['tmp_name'][0], "../users/".$_POST['user_id']."/".$_POST['filename'].".jpg")

?>