<?php
session_start();

if(!isset($_SESSION['login_member']))
  header("Location: ../member/login.php");

if(!isset($_GET['id']))
  header("Location: ./index.php");

require_once __DIR__."/../core/autoload.php";

$query  = "SELECT * FROM buku WHERE id = ". $_GET['id'];
$result = mysqli_query($connect, $query);

// Jika tidak ada data
if($result->num_rows == 0)
  header("Location: ./index.php");

$data = mysqli_fetch_assoc($result);

if(isset($_GET['confirm'])){
  if($_GET['confirm'] == 'yes'){
    if(!isset($_SESSION['login_member']))
      header("Location: ../member/login.php");

    $query = "INSERT INTO pinjam (id_anggota, id_buku) VALUES (". $_SESSION['id_anggota'] .", ". $data['id'] .")";
    $result = mysqli_query($connect, $query) OR die(mysql_error());

    header("Location: ./index.php");
  }
}

?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Konfirmasi Pinjam | Perpustakaan</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
  <h1>Konfirmasi Pinjam Buku</h1>
  
  <div>
    <p>Pastikan data dibawah ini benar sebelum Anda meminjam</p>
    <table>
    <table cellpadding="5">
      <tr>
        <th>kode Buku</th>
        <td><?= $data['kode']; ?></td>
      </tr>
      <tr>
        <th>Judul Buku</th>
        <td><?= $data['judul']; ?></td>
      </tr>
      <tr>
        <th>Kategori buku</th>
        <td><?= $data['kategori']; ?></td>
      </tr>
      <tr>
        <th>Pengarang</th>
        <td><?= $data['pengarang']; ?></td>
      </tr>
      <tr>
        <th>Penerbit</th>
        <td><?= $data['penerbit']; ?></td>
      </tr>
      <tr>
        <th>Tahun Terbit</th>
        <td><?= $data['tahun']; ?></td>
      </tr>
      <tr>
        <th>Tempat Terbit</th>
        <td><?= $data['tempat']; ?></td>
      </tr>
      <tr>
        <th>Halaman Buku</th>
        <td><?= $data['halaman']; ?></td>
      </tr>
      <tr>
        <th>Jumlah</th>
        <td><?= $data['jumlah']; ?></td>
      </tr>
      <tr>
        <th>No Inventaris</th>
        <td><?= $data['no_inventaris']; ?></td>
      </tr>
      <tr>
        <th>Rak</th>
        <td><?= $data['rak']; ?></td>
      </tr>
      <tr>
        <th>Keterangan</th>
        <td><?= $data['keterangan']; ?></td>
      </tr>
    </table>

    <br>

    <a href="<?= './pinjam.php?id='. $data['id'] .'&confirm=yes'; ?>">Lanjutkan</a>
    <br>
    <a href="javascript:window.history.back();">Batalkan</a>
  </div>
</body>
</html>