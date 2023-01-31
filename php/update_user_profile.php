<?php
if (!isset($_POST)) {
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
    die();
}
else {
    echo "Success";
}
if (isset($_POST['image'])) {
    $encoded_string = $_POST['image'];
    $userid = $_POST['user_id'];
    $decoded_string = base64_decode($encoded_string);
    $path = '../images/profiles/' . $userid . '.png';
    $is_written = file_put_contents($path, $decoded_string);
    if ($is_written) {
        $response = array('status' => 'success', 'data' => null);
        sendJsonResponse($response);
    } else {
        $response = array('status' => 'failed', 'data' => null);
        sendJsonResponse($response);
    }
    die();
}
if (isset($_POST['phone'])) {
    $phone = $_POST['phone'];
    $userid = $_POST['user_id'];
    $sqlupdate = "UPDATE tbl_users SET user_phone ='$phone' WHERE user_id ='$userid'";
    databaseUpdate($sqlupdate);
    die();
}
if (isset($_POST['password'])) {
    $password = sha1($_POST['password']);
    $userid = $_POST['user_id'];
    $sqlupdate = "UPDATE tbl_users SET user_pass ='$password' WHERE user_id = '$userid'";
    databaseUpdate($sqlupdate);
    die();
}
if (isset($_POST['name'])) {
    $name = $_POST['name'];
    $userid = $_POST['user_id'];
    $sqlupdate = "UPDATE tbl_users SET user_name ='$name' WHERE user_id ='$userid'";
    databaseUpdate($sqlupdate);
    die();
}
function databaseUpdate($sql)
{
    include_once("dbconnect.php");
    if ($conn->query($sql) === TRUE) {
        $response = array('status' => 'success', 'data' => null);
        sendJsonResponse($response);
    } else {
        $response = array('status' => 'failed', 'data' => null);
        sendJsonResponse($response);
    }
}
function sendJsonResponse($sentArray)
{
    header('Content‐Type: application/json');
    echo json_encode($sentArray);
}
?>