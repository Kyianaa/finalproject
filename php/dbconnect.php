<?php
 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $db = "homestay281917";
$conn = new mysqli($dbhost, $dbuser, $dbpass, $db);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>