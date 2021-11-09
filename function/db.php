<?php
// Kredensial database yang diperlukan

$host     = "localhost";
$uname    = "root";
$pass     = "";
$database = "perpustakaan.sql";

$connect = mysqli_connect($host, $uname, $pass, $database) OR die(mysql_error());
