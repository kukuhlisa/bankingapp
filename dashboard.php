<?php
include 'koneksi.php';
if (!isset($_SESSION['user_id'])) header("Location: login.php");

$id = $_SESSION['user_id'];
$data = mysqli_fetch_assoc(mysqli_query($conn, "SELECT saldo FROM users WHERE id=$id"));
?>

<link rel="stylesheet" href="style.css">

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Banking</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="dashboard-container">
    <div class="card">
        <h2>Dashboard Banking</h2>
        <p class="saldo">Saldo: Rp <?= number_format($data['saldo'], 0, ',', '.') ?></p>
        <div class="dashboard-links">
            <a href="transaksi.php">Transaksi</a>
            <a href="logout.php">Logout</a>
        </div>
    </div>
</div>

</body>
</html>
