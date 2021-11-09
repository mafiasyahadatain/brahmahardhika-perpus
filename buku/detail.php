<?php
// Jika tidak diakses lewat link URL yang memiliki id
if(!isset($_GET['id']))
  header("Location: ./index.php");

require_once __DIR__."/../core/autoload.php";

$query  = "SELECT * FROM buku WHERE id = ". $_GET['id'];
$result = mysqli_query($connect, $query);

// Jika tidak ada data
if($result->num_rows == 0)
  header("Location: ./index.php");

$data = mysqli_fetch_assoc($result);
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?= $data['judul']; ?> | Perpustakaan</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="/assets/style.css">
  <link rel="stylesheet" type="text/css" href="/assets/css.css">
</head>
<body>
  <div id="wrapper" style="background: url(/assets/ini.JPG)">
    <div id="header">
        <a href="" class="title">Perpustakaan Brahmahardhika</a>
		<img src="/assets/Logobmh.PNG" style="width:150px;height:150px" align="left">
		<img src="/assets/Logobmh.PNG" style="width:150px;height:150px" align="right">
    </div>
    <div id="content">
		<h1>Detail Buku</h1>
    </div>
    <div id="footer">
		<p>Berikut adalah detail buku yang Anda inginkan</p>
    </div>
  </div>
  <div style="text-align:center; padding-top:20px;">
    <h3><?= $data['kode']; ?></h3>
    <h3><?= $data['judul']; ?></h3>
  </div>
  <div class="box-table">

    <table cellpadding="5">
      <tr>
        <th>Kategori</th>
        <td><?= $data['kategori'] != NULL ? $data['kategori'] : 'Tidak ada' ?></td>
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
        <th>Tahun terbit</th>
        <td><?= $data['tahun']; ?></td>
      </tr>
      <tr>
        <th>Tempat Terbit</th>
        <td><?= $data['tempat']; ?></td>
      </tr>
      <tr>
        <th>Halaman</th>
        <td><?= $data['halaman']; ?></td>
      </tr>
      <tr>
        <th>Jumlah Buku</th>
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
  </div>

  <br>

  <div id="wrapper" style="font-size:20px;">
    <a style="color:red;" href="<?= './pinjam.php?id='. $data['id'] ?>">Pinjam Buku <?= $data['judul']; ?></a>
  </div>
</body>
</html>