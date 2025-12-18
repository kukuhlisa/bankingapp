<?php
include 'koneksi.php';


if (isset($_POST['login'])) {
$username = $_POST['username'];
$password = $_POST['password'];


$q = mysqli_query($conn, "SELECT * FROM users WHERE username='$username'");
$user = mysqli_fetch_assoc($q);


if ($user && password_verify($password, $user['password'])) {
$_SESSION['user_id'] = $user['id'];
header("Location: dashboard.php");
} else {
echo "Login gagal";
}
}
?>

<link rel="stylesheet" href="style.css">

<form method="post">
<h2>Login</h2>
<input type="text" name="username" required placeholder="Username"><br>
<input type="password" name="password" required placeholder="Password"><br>
<button name="login">Login</button>
</form>