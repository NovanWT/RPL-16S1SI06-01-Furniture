<?php 
$server = "localhost";
$username = "root";
$password = "";
$database = "db_furniture";

$con = mysqli_connect($server, $username, $password, $database) or die(mysqli_error());

$base_url = "http://".$_SERVER['SERVER_NAME']."/bengkel_ecom";

session_start();
ob_start();
?>