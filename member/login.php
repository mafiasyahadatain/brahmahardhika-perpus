<?php
session_start();

// jika sudah login
if(isset($_SESSION['login_member']))
  header('Location: ../buku/index.php');

// jika klik tombol login
if(isset($_POST['login-member']) && isset($_POST['username']) && isset($_POST['password'])){
  $username = $_POST['username'];
  $password = $_POST['password'];

  require_once __DIR__."/../core/autoload.php";
  
  $query = "SELECT * FROM anggota WHERE username = '". $username ."'";
  $result= mysqli_query($connect, $query);

  // Cek apakah username terdaftar
  if($result->num_rows == 0)
    die("Username tidak terdaftar");

  $row = mysqli_fetch_assoc($result);

  // cek apakah password input sama dengan password di database
  // karena menggunakan enkripsi, maka perlu menggunakan fungsi password_verify
  // untuk memvalidasi
  if($password-> $row['password'])
    die("password salah");

  $_SESSION['login_member'] = true;
  $_SESSION['id_anggota']   = (int) $row['id'];
  $_SESSION['username']     = $row['username'];
  $_SESSION['nama']         = $row['nama'];
  $_SESSION['status']       = (int) $row['status'];
  $_SESSION['alamat']       = $row['alamat'];

  header("Location: ../buku/index.php");
}

?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Login Member</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="/assets/login.css">
</head>
<body id="wrapper" style="background: url(/assets/ini.JPG); background-size:100%;">
	<div class="kotak_login" style="background-color:#fff000">
		<center>
		<img src="/assets/Logobmh.PNG" style="width:100px;height:100px" align="middle">
		</center>
		<p class="tulisan_login">Login Perpustakaan Online Brahmahardhika</p>
		<form action="" method="post">
			<div>
			<label for="username">Masukkan Username Kamu Disini :</label><br />
			<input type="text" name="username" class="form_login" placeholder="username" autofocus />

			<br><br>

			<label for="password">Password :</label><br>
			<input type="password" name="password" class="form_login" placeholder="password">

			<br><br>

			<input type="submit" name="login-member" class="tombol_login" value="Masuk">
			
			<br><br>
			
			<center>
				<a class="link" href="">kembali</a>
			</center>
			</div>
  </form>
</body>
</html>