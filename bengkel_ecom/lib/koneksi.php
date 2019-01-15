<?php 
$server = "localhost";
$username = "root";
$password = "";
$database = "db_benkelvelg";

mysql_connect($server, $username, $password) or die("Koneksi Gagal");
mysql_select_db($database) or die ("database tidak bisa dibuka")


?>