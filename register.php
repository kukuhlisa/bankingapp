<?php
include 'koneksi.php';



if (isset($_POST['register'])) {
$username = $_POST['username'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);


mysqli_query($conn, "INSERT INTO users (username,password) VALUES ('$username','$password')");
header("Location: login.php");
}
?>

<link rel="stylesheet" href="style.css">

<form method="post">
<h2>Register</h2>
<input type="text" name="username" required placeholder="Username"><br>
<input type="password" name="password" required placeholder="Password"><br>
<button name="register">Daftar</button>
</form>