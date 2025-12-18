<?php
include 'koneksi.php';
$id = $_SESSION['user_id'];

if (isset($_POST['setor'])) {
    $j = $_POST['jumlah'];
    mysqli_query($conn, "UPDATE users SET saldo = saldo + $j WHERE id=$id");
    mysqli_query($conn, "INSERT INTO transaksi (user_id,jenis,jumlah) VALUES ($id,'SETOR',$j)");
}

if (isset($_POST['tarik'])) {
    $j = $_POST['jumlah'];
    mysqli_query($conn, "UPDATE users SET saldo = saldo - $j WHERE id=$id");
    mysqli_query($conn, "INSERT INTO transaksi (user_id,jenis,jumlah) VALUES ($id,'TARIK',$j)");
}
?>

<link rel="stylesheet" href="style.css">

<div class="transaksi-container">
    <div class="card transaksi-card">
        <h2>Transaksi</h2>

        <form method="post" class="transaksi-form">
            <label for="jumlah">Masukkan Jumlah:</label>
            <input type="number" name="jumlah" id="jumlah" required placeholder="Masukkan jumlah">

            <div class="btn-group">
                <button type="submit" name="setor">Setor</button>
                <button type="submit" name="tarik">Tarik</button>
            </div>
        </form>
    </div>

    <a href="dashboard.php" class="btn kembali-btn">Kembali ke Dashboard</a>
</div>
