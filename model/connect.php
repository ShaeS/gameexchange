<?php
    
try {
    $db = new PDO("mysql:dbname=gameexchange; host=localhost", "root", "root");
} catch(PDOException $e) {
    echo "FAIL";
}

?>