<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "banking";


$conn = mysqli_connect($host, $user, $pass, $db);
if (!$conn) {
die("Koneksi gagal");
}
session_start();
?>

<link rel="stylesheet" href="style.css">
