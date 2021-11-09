<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Buku | Perpustakaan</title>
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
		<h1>Daftar Buku Perpustakaan Brahmahardhika</h1>
    </div>
    <div id="footer">
		<p>Silahkan pilih buku yang ingin dipinjam dipinjam.</p>
    </div>
  </div>
  <?php
  require_once __DIR__."/../core/autoload.php";
  $query = "SELECT * FROM buku";
  $result= mysqli_query($connect, $query) OR die(mysql_error());
  ?>
  
  <div class="box-table">
  <table>
    <thead>
      <tr>
        <th>kode</th>
        <th>Judul</th>
        <th>kategori</th>
        <th>pengarang</th>
        <th>penerbit</th>
        <th>tahun</th>
        <th>tempat</th>
        <th>halaman</th>
        <th>jumlah</th>
        <th>no.inven</th>
        <th>rak</th>
        <th>keterangan</th>
      </tr>
    </thead>
    <tbody>
      <?php while($row = mysqli_fetch_assoc($result)){ ?>
        <tr>
          <td><?= $row['kode']; ?></td>
          <td>
            <a href="<?= './detail.php?id='. $row['id'] ?>">
              <?= $row['judul']; ?>
            </a>
          </td>
          <td><?= $row['kategori'] != NULL ? $row['kategori'] : 'Tidak ada'; ?></td>
          <td><?= $row['pengarang']; ?></td>
          <td><?= $row['penerbit']; ?></td>
          <td><?= $row['tahun']; ?></td>
          <td><?= $row['tempat']; ?></td>
          <td><?= $row['halaman']; ?></td>
          <td><?= $row['jumlah']; ?></td>
          <td><?= $row['no_inventaris']; ?></td>
          <td><?= $row['rak']; ?></td>
          <td><?= $row['keterangan']; ?></td>
        </tr>
      <?php } ?>
    </tbody>
  </table>
  </div>
</body>
</html>